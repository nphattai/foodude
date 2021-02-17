import 'dart:ui';

import 'package:flutter/material.dart';

class AppFontFamily {
  static const AvenirNextPro = 'AvenirNextPro';
}

class AppTextStyles {
  static const largeTitle = TextStyle(
    fontFamily: AppFontFamily.AvenirNextPro,
    fontSize: 40,
    fontWeight: FontWeight.w500,
  );

  static const title_1 = TextStyle(
    fontFamily: AppFontFamily.AvenirNextPro,
    fontSize: 27,
  );

  static const title_2 = TextStyle(
    fontFamily: AppFontFamily.AvenirNextPro,
    fontSize: 20,
  );

  static const body = TextStyle(
    fontFamily: AppFontFamily.AvenirNextPro,
    fontSize: 15,
    color: Color(0xff6C747F),
  );
}
