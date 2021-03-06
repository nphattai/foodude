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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
          ElevatedButton(
            child: Text('Sign in'),
            onPressed: () => Navigator.pushNamed(context, RouteName.signInPage),
          ),
          ElevatedButton(
            child: Text('Sign Up'),
            onPressed: () => Navigator.pushNamed(context, RouteName.signUpPage),
          ),
          ElevatedButton(
            child: Text('Main page'),
            onPressed: () => Navigator.pushNamed(context, RouteName.mainPage),
          )
        ],
      ),
    );
  }
}
