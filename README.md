# Flutter BLoC Architecture 🚀

A reusable and scalable Flutter architecture built with **BLoC** for state management, **HTTP** for REST API integration, and **Equatable** for value equality.

This project provides a clean foundation for building maintainable, testable, and production-ready Flutter applications.

## ✨ Features

- **BLoC** — Separates business logic from the UI using events and states.
- **HTTP** — Handles REST API requests and responses.
- **Equatable** — Simplifies value equality for events, states, and models.
- **Clean Code Structure** — Organizes features and shared components.
- **Reusable Components** — Supports modular and maintainable development.
- **Scalable Architecture** — Makes it easier to add new features as the application grows.

## 🛠️ Tech Stack

| Package | Purpose |
|---|---|
| Flutter | Cross-platform application development |
| flutter_bloc | BLoC state management and UI integration |
| http | REST API communication |
| equatable | Value equality for Dart objects |

## 📦 Dependencies

Add these packages to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter

  flutter_bloc: ^9.1.1
  http: ^1.4.0
  equatable: ^2.0.7
```

These are example version constraints. Check [pub.dev](https://pub.dev/) for the latest compatible releases.

Install the dependencies:

```bash
flutter pub get
```

## 📁 Suggested Project Structure

```text
lib/
├── core/
│   ├── constants/
│   ├── errors/
│   ├── network/
│   │   └── api_client.dart
│   └── utils/
├── features/
│   └── home/
│       ├── bloc/
│       │   ├── home_bloc.dart
│       │   ├── home_event.dart
│       │   └── home_state.dart
│       ├── models/
│       ├── repositories/
│       └── views/
├── shared/
│   ├── widgets/
│   └── extensions/
└── main.dart
```

*Note: This is a suggested structure. Adjust it to match your actual repository.*

## ⚙️ Getting Started

### 1. Clone the repository

```bash
git clone <your-repository-url>
```

### 2. Navigate to the project

```bash
cd <your-project-folder>
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the application

```bash
flutter run
```

## 🧩 Architecture Overview

### 1. BLoC — State Management

BLoC separates UI components from business logic by using events and states.

- **Events:** Describe actions requested by the user or application.
- **States:** Represent the current UI state, such as initial, loading, success, or failure.
- **BLoC:** Processes events and emits new states.
- **BlocBuilder:** Rebuilds the UI when relevant states change.
- **BlocListener:** Handles one-time effects, such as navigation, dialogs, and snackbars.

### 2. HTTP — API Integration

The HTTP package is used to communicate with REST APIs.

- Send GET, POST, PUT, and DELETE requests.
- Parse JSON responses into Dart models.
- Handle HTTP status codes and API errors.
- Keep API calls inside dedicated data sources or repositories.

### 3. Equatable — Value Equality

Equatable helps compare Dart objects by their values instead of their object references.

It is useful for BLoC events and states because it makes state comparisons predictable and reduces unnecessary UI rebuilds when equal states are emitted.

Example:

```dart
import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int count;

  const CounterState(this.count);

  @override
  List<Object> get props => [count];
}
```

## 🎯 Project Goals

- Separate business logic from UI code.
- Keep API integration organized and reusable.
- Make state transitions predictable.
- Improve testability and code maintainability.
- Support modular feature development.
- Provide a foundation for future Flutter projects.

## 🧪 Testing

Run the project's tests using:

```bash
flutter test
```

BLoC logic, repositories, and UI components can be tested independently to improve reliability.

## 🚀 Future Improvements

- Centralized API error handling.
- Authentication and token management.
- Dependency injection.
- Unit and widget tests.
- Pagination and pull-to-refresh support.
- Environment-based API configuration.
- CI/CD with GitHub Actions.

## 🤝 Contributing

Contributions and suggestions are welcome.

1. Fork the repository.
2. Create a feature branch.
3. Commit your changes.
4. Open a pull request.

## 📄 License

Add a license, such as the MIT License, to clarify how others may use and distribute this project.

---


