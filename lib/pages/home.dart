import 'package:flutter/material.dart';
import 'package:foodude/routes/route_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('Go proifle'),
          onPressed: () => Navigator.pushNamed(context, RouteName.homePage),
        ),
      ),
    );
  }
}
