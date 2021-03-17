import 'package:flutter/material.dart';
import 'package:foodude/themes/app_colors.dart';
import 'package:foodude/themes/app_text_styles.dart';
import 'package:foodude/themes/app_text_theme.dart';

final ThemeData kLightTheme = _buildLightTheme();

ThemeData _buildLightTheme() {
  const primaryColor = AppColors.primary;
  const accentColor = AppColors.neutral;
  const borderRadius = BorderRadius.all(Radius.circular(10));
  const focusBorderSide = BorderSide(width: 1, color: AppColors.neutral_3);
  const enableBorderSide = BorderSide(width: 0.5, color: AppColors.neutral_3);
  var borderSideError = focusBorderSide.copyWith(color: AppColors.semantic_1);

  return ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: accentColor,
    scaffoldBackgroundColor: AppColors.neutral_5,
    errorColor: AppColors.semantic_1,
    accentTextTheme: AppTextTheme.accentTextTheme,
    primaryTextTheme: AppTextTheme.primaryTextTheme,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      colorScheme: ColorScheme.light(primary: AppColors.primary),
    ),
    iconTheme: IconThemeData(color: accentColor),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: AppColors.neutral),
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: AppTextStyle.bodyText1.apply(color: AppColors.neutral_2),
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
