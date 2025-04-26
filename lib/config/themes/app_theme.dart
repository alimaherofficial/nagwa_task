import 'package:flutter/material.dart';
import 'package:nagwa_task/core/extensions/num_extensions.dart';
import 'package:nagwa_task/core/utils/app_colors.dart';
import 'package:nagwa_task/core/utils/styles_helper.dart';

/// A class that provides a light theme configuration for the application.
class AppTheme {
  /// Returns a [ThemeData] object representing the light theme of the app.
  ///
  /// The `lang` argument specifies the language for which the font family
  /// should be selected.
  ///
  /// The returned theme has its various properties configured, such as
  /// text styles, colors, etc.
  static ThemeData theme({required String lang}) {
    return ThemeData(
      /// useMaterial3.
      useMaterial3: true,
      // Define the primary color swatch.
      primarySwatch: AppColors.primarySwatchColor,

      textSelectionTheme: const TextSelectionThemeData(
        selectionHandleColor: AppColors.text,
        cursorColor: AppColors.text,
      ),

      // Various color configurations.
      primaryColor: AppColors.primary,
      hintColor: AppColors.text.withAlpha(127),
      dividerColor: AppColors.text,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      shadowColor: Colors.transparent,
      secondaryHeaderColor: AppColors.background,
      cardColor: AppColors.background,
      scaffoldBackgroundColor: AppColors.background,

      /// Set the button theme.
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.primary,
        focusColor: AppColors.primary,
      ),

      textTheme: TextTheme(
        // /// Used for labels on upgrader components.
        // labelLarge: getBoldStyle(),

        /// Used for text fields labels.
        labelMedium: AppTextStyle.body(color: AppColors.text),

        /// Used for seen and requested texts.
        labelSmall: AppTextStyle.labelSmall(color: AppColors.primary),

        /// Used for main headers.
        displayLarge: AppTextStyle.displayLarge(
          color: AppColors.outrageousOrange,
        ),

        /// Used for sub-headers and home information and hints.
        /// Use it also for messages but with FontWeight.w500
        displayMedium: AppTextStyle.buttonsContent(
          color: AppColors.outrageousOrange,
        ),

        /// Used for sub-action text.
        displaySmall: AppTextStyle.displaySmall(color: AppColors.silver),

        /// Used for prominent titles and big circle avatar names.
        /// If you need to use it for the smaller avatar make it 17.sp
        titleLarge: AppTextStyle.bigBody(color: AppColors.primary),

        /// Used for subtitles and buttons titles.
        titleMedium: AppTextStyle.titleMedium(color: AppColors.primary),

        /// Used for less prominent titles and online status container.
        titleSmall: AppTextStyle.tryS(color: AppColors.text),

        /// Used for information text.
        headlineLarge: AppTextStyle.mediumBody(color: AppColors.text),

        /// Used for navigation bar titles and preferences containers.
        headlineMedium: AppTextStyle.labelSmall(color: AppColors.text),

        /// Used for secondary body text.
        headlineSmall: AppTextStyle.labelSmall(color: AppColors.text),

        /// Used for bold text.
        bodyLarge: AppTextStyle.largeBody(color: AppColors.text),

        /// Used for standard body text.
        bodyMedium: AppTextStyle.mediumBody(color: AppColors.philippineGray),

        /// Used for smaller body text.
        /// Use it also for last seen message but with FontWeight.w500
        bodySmall: AppTextStyle.smallBody(color: AppColors.silver),
      ),

      // Set the brightness level.
      brightness: Brightness.light,

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle: AppTextStyle.bigBody(color: AppColors.text),
        contentPadding: EdgeInsets.symmetric(vertical: 1.8.h, horizontal: 4.w),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.normalBorder),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.error),
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        errorStyle: AppTextStyle.body(color: AppColors.error),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.normalBorder),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.normalBorder),
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
      ),
    );
  }
}
