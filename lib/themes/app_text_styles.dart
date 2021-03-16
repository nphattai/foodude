import 'package:flutter/material.dart';

class AppFontFamily {
  static String fontAveinrMedium = 'AvenirNextLTProMedium';
  static String fontAveinrDemi = 'AvenirNextLTProDemi';
  static String fontAveinrRegular = 'AvenirNextLTProRegular';
  static String fontAveinrBold = 'AvenirNextLTProBold';
}

class AppTextStyle {
  static TextStyle headline2 = TextStyle(
    fontSize: 40,
    fontFamily: AppFontFamily.fontAveinrMedium,
  );
  static TextStyle headline3 = TextStyle(
    fontSize: 27,
    fontFamily: AppFontFamily.fontAveinrDemi,
  );
  static TextStyle headline4 = TextStyle(
    fontSize: 20,
    fontFamily: AppFontFamily.fontAveinrDemi,
  );
  static TextStyle headline5 = TextStyle(
    fontSize: 20,
    fontFamily: AppFontFamily.fontAveinrMedium,
  );
  static TextStyle headline6 = TextStyle(
    fontSize: 16,
    fontFamily: AppFontFamily.fontAveinrDemi,
  );
  static TextStyle bodyText1 = TextStyle(
    fontSize: 16,
    fontFamily: AppFontFamily.fontAveinrRegular,
  );
  static TextStyle bodyText2 = TextStyle(
    fontSize: 16,
    fontFamily: AppFontFamily.fontAveinrMedium,
  );
  static TextStyle caption = TextStyle(
    fontSize: 12,
    fontFamily: AppFontFamily.fontAveinrMedium,
  );
}
