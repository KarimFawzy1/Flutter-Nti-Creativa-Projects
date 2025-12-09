## BMI Calculator Flutter App

This is a simple BMI (Body Mass Index) Calculator built with Flutter. It helps users quickly calculate their BMI based on their gender, weight, height, and age.

### Features

- **Gender Selection:** Choose between male and female for personalized results.
- **Weight & Age Adjustment:** Use increment/decrement buttons to set weight (kg) and age (years).
- **Height Slider:** Adjust your height (cm) via a smooth slider.
- **BMI Calculation:** Instantly calculates and displays your BMI with relevant info.
- **State Management:** Uses `flutter_bloc` for responsive UI and clean business logic separation.

### Getting Started

#### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) installed on your machine

#### Running the App

1. Clone the repository:
   ```
   git clone <repo-url>
   cd ass
   ```
2. Get dependencies:
   ```
   flutter pub get
   ```
3. Run the app:
   ```
   flutter run
   ```

### Project Structure

```
lib/
  core/
    bmi_functions.dart        # BMI calculation and utility functions
  cubit/
    logic.dart               # BMI Cubit logic & state
    state.dart               # Bloc/Cubit state definitions
  features/
    home/
      home_screen.dart       # Main BMI calculation interface
      widgets/
        weight_age_tile.dart # Widget for weight and age selection
    splash/
      splash_screen.dart     # Gender selection splash screen
      next_screen_button.dart# Button for navigating to Home
  main.dart                  # App entry point and routing
```

### Customization

- Update UI elements and styles in the respective widget files in `features/`.
- Business logic is contained within the `BmiCubit` class in `cubit/logic.dart`.

### Example Usage

1. Select your gender on the splash screen.
2. Adjust your age, height, and weight.
3. Hit "Continue" to view your BMI result.

### License

This project is distributed for learning purposes.

### Contact

For any queries or issues, please open an issue or contact the maintainer.
