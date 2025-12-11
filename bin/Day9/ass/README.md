# Flutter Login Learning Project

This project is a simple Flutter application built to help you learn about state management with [flutter_bloc](https://pub.dev/packages/flutter_bloc) and the basics of creating login forms in Flutter. It demonstrates how to:

- Use the **Bloc** and **Cubit** patterns for managing state.
- Add validation for email and password fields in a login form.
- Handle authentication UI and logic separation.

---

## Features

- **Login Form**

  - Email and password input, with inline validation feedback.
  - "Forgot password" button.
  - Login button with validation check.
  - Error snackbar on login failure.
  - Success navigation on login.

- **Social Login UI**
  - UI for Google and Facebook login (visual only, not functional).

---

## Structure

- `lib/cubit/logic.dart`: Contains the `LoginCubit`, which manages login state and validation.
- `lib/cubit/state.dart`: Defines the possible login states, such as initial, validation, error, and success.
- `lib/features/splash/splash_screen.dart`: The main login screen UI, connects UI to `LoginCubit`.
- `lib/features/splash/widgets/text_form_custom.dart`: Custom widget for email and password fields, including validation display.

---

## How it works

- When the user enters email and password, the fields are validated in real-time.
- Only valid email addresses (must have `@` and `.com`) and passwords longer than 4 characters are accepted.
- When "LOGIN" is pressed, the app either shows success (navigates to home) or an error (shows a snackbar).
- This project is meant for **learning purposes only** — authentication is simulated and not secure.

---

## Getting Started

1. Clone the repository.
2. Run `flutter pub get` to install dependencies.
3. Execute `flutter run` to start the application.

---
