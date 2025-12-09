# Task 1: TODO App

A simple Flutter TODO app using BLoC pattern.

## Features

- Add TODO items
- Toggle (mark as done/undone) TODO items
- State management using `flutter_bloc`

## Getting Started

### Prerequisites

- Flutter >= 3.0
- Dart >= 2.16

### Installation

1. Clone the repository:
   ```
   git clone <repo-url>
   ```
2. Install dependencies:
   ```
   flutter pub get
   ```

### Running the App

Run the app on an emulator or connected device:

```
flutter run
```

## Project Structure

```
lib/
├── features/
│   └── todo/
│       ├── cubit/
│       │   ├── logic.dart      # Contains the BLoC logic (TodoCubit)
│       │   └── state.dart      # States for TodoCubit
│       ├── models/
│       │   └── todo_model.dart # Model for a TODO item
│       └── home_page.dart      # Main UI for TODOs
└── main.dart                   # Entry point of the application
```

## How It Works

- The main entry (`main.dart`) sets up the BLoC provider and HomePage.
- Users can add new TODO items and toggle their completed state.
- State updates are managed via Cubit (`logic.dart`).

## Dependencies

- [flutter_bloc](https://pub.dev/packages/flutter_bloc)

### License

This project is distributed for learning purposes.
