import '../utils/constants.dart';

class Weather {
  final String cityName;
  final String country;
  final double temperature;
  final String condition;
  final int conditionCode;
  final double windSpeed;
  final int humidity;
  final double feelsLike;

  Weather({
    required this.cityName,
    required this.country,
    required this.temperature,
    required this.condition,
    required this.conditionCode,
    required this.windSpeed,
    required this.humidity,
    required this.feelsLike,
  });

  // Factory constructor to parse JSON from WeatherAPI.com
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['location']['name'],
      country: json['location']['country'],
      temperature: json['current']['temp_f'].toDouble(),
      condition: json['current']['condition']['text'],
      conditionCode: json['current']['condition']['code'],
      windSpeed: json['current']['wind_mph'].toDouble(),
      humidity: json['current']['humidity'],
      feelsLike: json['current']['feelslike_f'].toDouble(),
    );
  }

  // Helper method to get appropriate Lottie animation based on weather condition
  String getAnimationPath() {
    // WeatherAPI condition codes:
    // 1000: Clear/Sunny
    // 1003-1009: Cloudy variations
    // 1063-1201: Rain variations
    // 1210-1282: Snow variations
    // 1273-1282: Thunder variations
    // 1135-1147: Mist/Fog

    if (conditionCode == 1000) {
      return WeatherConstants.sunnyAnimation;
    } else if (conditionCode >= 1003 && conditionCode <= 1009) {
      return WeatherConstants.cloudyAnimation;
    } else if ((conditionCode >= 1063 && conditionCode <= 1201) ||
        (conditionCode >= 1240 && conditionCode <= 1246)) {
      return WeatherConstants.rainyAnimation;
    } else if (conditionCode >= 1210 && conditionCode <= 1237) {
      return WeatherConstants.snowAnimation;
    } else if (conditionCode >= 1273 && conditionCode <= 1282) {
      return WeatherConstants.thunderstormAnimation;
    } else if (conditionCode >= 1135 && conditionCode <= 1147) {
      return WeatherConstants.mistAnimation;
    }
    return WeatherConstants.defaultAnimation;
  }
}
