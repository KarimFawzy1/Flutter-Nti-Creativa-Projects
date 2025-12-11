# Flutter BMI Calculator

This project is a simple Body Mass Index (BMI) calculator app created using **Flutter**. It is intended **for learning purposes** and demonstrates basic usage of state management, page routing, and responsive design in Flutter.

## Features

- **Splash Screen:** Welcome splash screen at app launch
- **Home Screen:** Input your height and weight to calculate BMI
- **State Management:** Uses [Flutter BLoC](https://pub.dev/packages/flutter_bloc) for managing state
- **Responsive Design:** Layout adapts to different screen sizes using both [MediaQuery](https://api.flutter.dev/flutter/widgets/MediaQuery-class.html) and the [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) package

## Getting Started

1. **Clone the repository:**

   ```
   git clone <your-repository-url>
   cd <project-directory>
   ```

2. **Install dependencies:**

   ```
   flutter pub get
   ```

3. **Run the app:**
   ```
   flutter run
   ```

## Folder Structure

```
lib/
  features/
    splash/
      splash_screen.dart
    home/
      home_screen.dart
  cubit/
    logic.dart
  main.dart
```

## Dependencies

- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)

## Notes

- **Responsive UI**: The project uses both `MediaQuery` and `flutter_screenutil` to ensure a responsive and adaptive UI across different screen sizes and devices.
- This project is intended for **educational and learning purposes only**.
- Explore and experiment with the code to understand how Flutter works!
