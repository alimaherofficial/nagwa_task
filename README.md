# Nagwa Books - Flutter Application

A clean architecture Flutter application for browsing and searching books from a public API.

![Flutter Version](https://img.shields.io/badge/flutter-^3.7.2-blue)
![Dart Version](https://img.shields.io/badge/dart-^3.7.2-blue)
![License](https://img.shields.io/badge/license-MIT-green)

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Testing](#testing)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Future Improvements](#future-improvements)

## Overview

Nagwa Books is a Flutter application that allows users to browse and search for books using a public API. The app features a clean and modern UI, supports pagination for large datasets, and implements offline capability through local caching.

## Features

- **Browse Books**: View a paginated list of books
- **Search Functionality**: Search for books by title or other criteria
- **Offline Support**: Access previously loaded books when offline
- **Responsive UI**: Adapts to different screen sizes
- **Localization Ready**: Prepared for multiple languages
- **Light Theme**: Modern and clean light theme

## Architecture

This project follows Clean Architecture principles to separate concerns and promote testability:

```
lib/
  ├── features/          # Feature modules
  │   └── books/         # Books feature
  │       ├── data/      # Data layer (APIs, repositories implementation)
  │       ├── domain/    # Domain layer (entities, repositories interfaces, use cases)
  │       └── presentation/ # UI layer (pages, widgets, controllers)
  ├── core/              # Core functionality (API clients, errors, utils)
  ├── config/            # App configuration (routes, themes)
  └── generated/         # Generated code (localizations)
```

### Key Architecture Components:

- **Entity**: Core business objects
- **Repository**: Abstracts data sources
- **Use Case**: Encapsulates business logic
- **Cubit/BLoC**: Manages UI state
- **Dependency Injection**: Manages dependencies with GetIt and Injectable

## Tech Stack

- **UI**: Flutter
- **State Management**: flutter_bloc/Cubit
- **Dependency Injection**: GetIt + Injectable
- **Navigation**: Go Router
- **Network**: Dio
- **Local Storage**: Hive
- **Code Generation**: Freezed, JSON Serializable
- **Testing**: Flutter Test

## Getting Started

### Prerequisites

- Flutter SDK (^3.29.7)
- An IDE (Android Studio, VS Code, etc.)

### Installation

1. Clone the repository
   ```bash
   git clone https://github.com/yourusername/nagwa_task.git
   cd nagwa_task
   ```

2. Install dependencies
   ```bash
   flutter pub get
   ```

3. Run code generation
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. Run the app
   ```bash
   flutter run
   ```

## Usage

- **Home Screen**: Browse the list of books
- **Search**: Tap the search icon to find specific books
- **Book Details**: Tap on a book to view more details
- **Pagination**: Scroll down to load more books automatically

## Testing

Run the tests with:

```bash
flutter test
```

## Project Structure

```
lib/
├── app.dart                   # Main app widget configuration
├── main.dart                  # Application entry point
├── features/                  # Feature modules
│   ├── books/                 # Books feature
│   │   ├── data/              # Data layer
│   │   │   ├── datasources/   # API and local data sources
│   │   │   ├── models/        # Data models/DTOs
│   │   │   └── repositories/  # Repository implementations
│   │   ├── domain/            # Domain layer
│   │   │   ├── entities/      # Business entities
│   │   │   ├── repositories/  # Repository interfaces
│   │   │   └── usecases/      # Business logic use cases
│   │   └── presentation/      # UI layer
│   │       ├── controllers/   # BLoC/Cubit state management
│   │       ├── pages/         # Screens
│   │       └── widgets/       # Reusable UI components
│   └── splash/                # Splash screen feature
├── core/                      # Core utilities
│   ├── api/                   # API client and configuration
│   ├── errors/                # Error handling
│   ├── injection_container.dart # Dependency injection setup
│   ├── presentation/          # Shared UI components
│   └── utils/                 # Utility functions and extensions
└── config/                    # App configuration
    ├── routes/                # Routing configuration
    └── themes/                # App themes

```

## Dependencies

Major dependencies used in this project:

- **flutter_bloc**: ^9.1.0 - State management
- **get_it**: ^8.0.3 - Dependency injection
- **injectable**: ^2.5.0 - Code generation for dependency injection
- **go_router**: ^15.1.1 - Navigation
- **dio**: ^5.8.0+1 - HTTP client
- **hive_ce**: ^2.10.1 - Local database
- **dartz**: ^0.10.1 - Functional programming
- **freezed**: ^3.0.6 - Immutable models
- **json_serializable**: ^6.9.5 - JSON serialization

## Future Improvements

- Enhance test coverage
- Add CI/CD pipeline
- Implement dark theme
- Add more robust error handling
- Improve accessibility features
- Add analytics and monitoring
