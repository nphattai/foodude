import 'package:flutter/material.dart';
import 'package:foodude/themes/app_colors.dart';
import 'package:foodude/themes/app_text_styles.dart';
import 'package:foodude/themes/app_text_theme.dart';

final ThemeData kLightTheme = _buildLightTheme();

ThemeData _buildLightTheme() {
  const primaryColor = AppColors.burntOrange;
  const accentColor = AppColors.fiord;
  const errorColor = AppColors.coralRed;
  const borderRadius = BorderRadius.all(Radius.circular(10));
  const focusBorderSide = BorderSide(width: 1, color: AppColors.silver);
  const enableBorderSide = BorderSide(width: 0.5, color: AppColors.silver);
  final borderSideError = focusBorderSide.copyWith(color: errorColor);

  return ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: accentColor,
    scaffoldBackgroundColor: AppColors.white,
    errorColor: errorColor,
    accentTextTheme: AppTextTheme.accentTextTheme,
    primaryTextTheme: AppTextTheme.primaryTextTheme,
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      colorScheme: ColorScheme.light(primary: primaryColor),
    ),
    iconTheme: IconThemeData(color: accentColor),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: accentColor),
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: AppTextStyle.bodyText1.apply(color: AppColors.nobel),
      enabledBorder: OutlineInputBorder(
          borderSide: enableBorderSide, borderRadius: borderRadius),
      focusedBorder: OutlineInputBorder(
          borderSide: focusBorderSide, borderRadius: borderRadius),
      errorBorder: OutlineInputBorder(
          borderSide: borderSideError, borderRadius: borderRadius),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    ),
  );
}
