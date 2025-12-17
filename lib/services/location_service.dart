import 'package:geolocator/geolocator.dart';
import '../utils/constants.dart';

class LocationService {
  // Check if location services are enabled
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  // Request location permission
  Future<LocationPermission> requestPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return permission;
  }

  // Get current position with error handling
  Future<Position> getCurrentPosition() async {
    // Check if location service is enabled
    bool serviceEnabled = await isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception(WeatherConstants.locationServiceDisabled);
    }

    // Check and request permission
    LocationPermission permission = await requestPermission();

    if (permission == LocationPermission.denied) {
      throw Exception(WeatherConstants.locationPermissionDenied);
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(WeatherConstants.locationPermissionDeniedForever);
    }

    // Get position with high accuracy
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
