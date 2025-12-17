class WeatherConstants {
  // API Configuration
  static const String apiKey =
      '732b1839bf7f41c098614145251712'; // Replace with your WeatherAPI.com key
  static const String baseUrl = 'https://api.weatherapi.com/v1';

  // Endpoints
  static const String currentWeatherEndpoint = '/current.json';

  // Error Messages
  static const String locationPermissionDenied =
      'Location permission denied. Please allow location access to see weather data.';
  static const String locationPermissionDeniedForever =
      'Location permissions are permanently denied. Please enable them in your device settings.';
  static const String locationServiceDisabled =
      'Location services are disabled. Please enable them in your device settings.';
  static const String weatherFetchError = 'Failed to fetch weather data';
  static const String networkError =
      'Network error. Please check your internet connection.';

  // Lottie Animation Paths
  static const String sunnyAnimation = 'assets/animations/sunny.json';
  static const String cloudyAnimation = 'assets/animations/cloudy.json';
  static const String rainyAnimation = 'assets/animations/rainy.json';
  static const String thunderstormAnimation =
      'assets/animations/thunderstorm.json';
  static const String snowAnimation = 'assets/animations/snow.json';
  static const String mistAnimation = 'assets/animations/mist.json';
  static const String defaultAnimation = 'assets/animations/default.json';
}
