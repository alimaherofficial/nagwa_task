import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nagwa_task/config/routes/app_paths.dart';
import 'package:nagwa_task/core/utils/analytics_navigator_observer.dart';
import 'package:nagwa_task/features/books/presentation/pages/books_screen.dart';
import 'package:nagwa_task/features/splash/presentation/pages/splash_screen.dart';

/// A global key that will uniquely identify the Navigator
final navigatorKey = GlobalKey<NavigatorState>();

/// The main router for the application.
class AppRouter {
  /// The GoRouter instance for the application.
  static final GoRouter router = GoRouter(
    observers: [AnalyticsNavigatorObserver()],
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: AppPaths.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppPaths.books,
        builder: (context, state) => const BooksScreen(),
      ),
    ],
  );
}
