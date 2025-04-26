import 'package:flutter/material.dart';

/// A utility class that defines all the colors used throughout the application.
/// This class provides a centralized location for managing the app's color scheme.
class AppColors {
  /// The background color of the app
  static const Color background = Color(0xFFF8F9FA);

  /// The text color of the app
  static const Color text = Color(0xFF212529);

  /// The primary color of the app
  static const Color primary = Color(0xFF3F51B5);

  /// The secondary color of the app
  static const Color secondary = Color(0xFF03A9F4);

  /// The primarySwatchColor of the app MaterialColor
  static const MaterialColor primarySwatchColor =
      MaterialColor(0xFF3F51B5, <int, Color>{
        50: Color(0xFFE8EAF6),
        100: Color(0xFFC5CAE9),
        200: Color(0xFF9FA8DA),
        300: Color(0xFF7986CB),
        400: Color(0xFF5C6BC0),
        500: Color(0xFF3F51B5),
        600: Color(0xFF3949AB),
        700: Color(0xFF303F9F),
        800: Color(0xFF283593),
        900: Color(0xFF1A237E),
      });

  /// The philippineGray color of the app
  static const Color philippineGray = Color(0xFF8D99AE);

  /// The silver color of the app
  static const Color silver = Color(0xFFADB5BD);

  /// The normalBorder color of the app
  static const Color normalBorder = Color(0xFFDEE2E6);

  /// The error color of the app
  static const Color error = Color(0xFFDC3545);

  /// The disabledPrimary color of the app
  static const Color disabledPrimary = Color(0xFF9FA8DA);

  /// The outrageousOrange color of the app
  static const Color outrageousOrange = Color(0xFFFF5722);
}
