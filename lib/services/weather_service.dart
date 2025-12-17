import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather.dart';
import '../utils/constants.dart';

class WeatherService {
  // Fetch weather data by coordinates
  Future<Weather> getWeatherByCoordinates(double latitude, double longitude) async {
    try {
      // Build API URL
      final url = Uri.parse(
          '${WeatherConstants.baseUrl}${WeatherConstants.currentWeatherEndpoint}'
          '?key=${WeatherConstants.apiKey}'
          '&q=$latitude,$longitude'
          '&aqi=no'); // We don't need air quality data

      // Make HTTP request
      final response = await http.get(url);

      // Check response status
      if (response.statusCode == 200) {
        // Parse JSON and create Weather object
        final jsonData = json.decode(response.body);
        return Weather.fromJson(jsonData);
      } else if (response.statusCode == 401) {
        throw Exception('Invalid API key');
      } else if (response.statusCode == 400) {
        throw Exception('Invalid coordinates');
      } else {
        throw Exception('${WeatherConstants.weatherFetchError}: ${response.statusCode}');
      }
    } catch (e) {
      if (e.toString().contains('SocketException')) {
        throw Exception(WeatherConstants.networkError);
      }
      rethrow;
    }
  }
}
