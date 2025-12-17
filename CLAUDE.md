# Simple Weather App (smpl_wthr)

## Project Overview
A Flutter-based weather application for displaying weather information.

## Tech Stack
- **Framework**: Flutter
- **Language**: Dart
- **Platform**: Cross-platform (iOS, Android, Web, Desktop)

## Key Commands
- **Run app**: `flutter run`
- **Build (Android)**: `flutter build apk`
- **Build (iOS)**: `flutter build ios`
- **Test**: `flutter test`
- **Analyze code**: `flutter analyze`
- **Format code**: `dart format .`
- **Clean build**: `flutter clean`
- **Get dependencies**: `flutter pub get`

## Project Structure
```
lib/
├── main.dart           # App entry point, MaterialApp setup
└── pages/
    └── weather_page.dart  # Main weather display page
```

## Code Style Guidelines
- Follow official Flutter/Dart style guide
- Use `const` constructors wherever possible for better performance
- Use meaningful widget names with proper capitalization
- Keep widget build methods simple and readable
- Prefer StatelessWidget over StatefulWidget when state is not needed

## Important Patterns
- All page files should be in `lib/pages/` directory
- Main app configuration is in `lib/main.dart`
- Use StatefulWidget for pages that need to manage state
- Follow Flutter naming conventions: class names use PascalCase, file names use snake_case

## Git Repository
- **Remote**: https://github.com/masondehoff/smpl_wthr.git
- **Branch**: main
