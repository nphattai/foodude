import 'package:flutter/material.dart';
import 'package:foodude/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Home Page",
          style: AppTextStyle.headline2,
        ),
      ),
    );
  }
}
