import 'package:flutter/material.dart';
import 'package:foodude/routes/route_name.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 100)),
          RaisedButton(
            child: Text('Sign in'),
            onPressed: () => Navigator.pushNamed(context, RouteName.signInPage),
          ),
          RaisedButton(
            child: Text('Sign Up'),
            onPressed: () => Navigator.pushNamed(context, RouteName.signUpPage),
          ),
          RaisedButton(
            child: Text('Main page'),
            onPressed: () => Navigator.pushNamed(context, RouteName.mainPage),
          )
        ],
      ),
    );
  }
}
