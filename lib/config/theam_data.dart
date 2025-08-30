import 'package:flutter/material.dart';

/// ---------------------- COLORS ----------------------
class ColorsData {
  // Primary Colors
  static const Color primaryColor = Color(0xFF3fbbc0);
  static const Color secondaryColor = Color(0xFF65c9cd);
  static const Color textColor = Color(0xFF444444);
  static const Color whiteColor = Colors.white;
  static const Color darkGrayColor = Color(0xFF333333);

  // Accent Colors
  static const Color primaryPurpleColor = Color(0xFF6200EE);
  static const Color secondaryPurpleColor = Color(0xFF3700B3);
  static const Color tealColor = Color(0xFF03DAC5);

  // Special Colors
  static const Color faqCollapsedIcon = primaryColor;
}

/// ---------------------- SIZES ----------------------
class AppSizes {
  // Padding and Margin Sizes
  static const double smallPadding = 8.0;
  static const double mediumPadding = 16.0;
  static const double largePadding = 24.0;

  static const double smallMargin = 8.0;
  static const double mediumMargin = 16.0;
  static const double largeMargin = 24.0;

  // Button Sizes
  static const double buttonHeight = 48.0;
  static const double buttonWidth = 150.0;

  // Icon Sizes
  static const double smallIconSize = 24.0;
  static const double mediumIconSize = 32.0;
  static const double largeIconSize = 48.0;

  // Text Sizes
  static const double smallTextSize = 12.0;
  static const double mediumTextSize = 16.0;
  static const double largeTextSize = 24.0;

  // Container Sizes
  static const double containerWidth = 200.0;
  static const double containerHeight = 150.0;

  // Other
  static const double borderRadius = 8.0;
}

/// ---------------------- LIGHT THEME ----------------------
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    surfaceTintColor: Colors.transparent,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorsData.tealColor,
      foregroundColor: ColorsData.whiteColor,
    ),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    bodySmall: TextStyle(fontSize: 16, color: ColorsData.darkGrayColor),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsData.darkGrayColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsData.primaryColor),
    ),
    contentPadding: EdgeInsets.all(AppSizes.mediumPadding),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppSizes.borderRadius)),
    ),
    hintStyle: TextStyle(color: ColorsData.darkGrayColor),
    fillColor: Colors.white,
    filled: true,
  ),
);

/// ---------------------- DARK THEME ----------------------
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorsData.tealColor,
      foregroundColor: Colors.white,
    ),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 20, color: ColorsData.whiteColor, fontWeight: FontWeight.bold),
    bodySmall: TextStyle(fontSize: 16, color: ColorsData.darkGrayColor),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsData.primaryColor),
    ),
    contentPadding: EdgeInsets.all(AppSizes.mediumPadding),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppSizes.borderRadius)),
    ),
  ),
);
