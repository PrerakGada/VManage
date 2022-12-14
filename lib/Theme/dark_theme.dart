import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'typography.dart';

// ignore: non_constant_identifier_names
ThemeData dark_theme() => ThemeData(
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primaryAccent,
      colorScheme: ColorScheme.dark(),
      appBarTheme: AppBarTheme(
        color: AppColors.primary,
        systemOverlayStyle: SystemUiOverlayStyle(
          systemStatusBarContrastEnforced: true,
          statusBarColor: AppColors.black,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
      ),
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme().apply(
        bodyColor: AppColors.greyLight,
        displayColor: AppColors.white,
      ),
      backgroundColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.greyDark,
      primaryTextTheme: textTheme,
      iconTheme: const IconThemeData(color: AppColors.greyLight),
    );
