import 'package:flutter/material.dart';
import 'package:foodude/themes/app_colors.dart';
import 'package:foodude/themes/app_text_styles.dart';

class AppTextTheme {
  static final primaryColor = AppColors.burntOrange;
  static final accentColor = AppColors.fiord;

  static TextTheme primaryTextTheme = TextTheme(
          headline2: AppTextStyle.headline2,
          headline3: AppTextStyle.headline3,
          headline4: AppTextStyle.headline4,
          headline5: AppTextStyle.headline5,
          headline6: AppTextStyle.headline6,
          bodyText1: AppTextStyle.bodyText1,
          bodyText2: AppTextStyle.bodyText2,
          caption: AppTextStyle.caption)
      .apply(displayColor: primaryColor, bodyColor: primaryColor);

  static TextTheme accentTextTheme = primaryTextTheme.copyWith().apply(
        displayColor: accentColor,
        bodyColor: accentColor,
      );
}
