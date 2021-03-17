import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodude/widgets/buttons/button_submit.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dismissKeyboard,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: _buildSignUpForm(context),
        ),
      ),
    );
  }

  Widget _buildSignUpForm(BuildContext context) {
    final accentTextTheme = Theme.of(context).accentTextTheme;
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        height: screenHeight,
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Sign Up',
            style: accentTextTheme.headline2,
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
                text: "Enter your Email and new Password\nfor sign up, or ",
                style: accentTextTheme.bodyText1,
                children: [
                  TextSpan(
                    style: primaryTextTheme.bodyText1,
                    text: 'Already have account?',
                    recognizer: TapGestureRecognizer()..onTap = goSignIn,
                  )
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email or Phone Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Confirm Password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonSubmit(title: 'SIGN UP', onPress: signUp),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "By signing up you agree to our ",
                    style: accentTextTheme.bodyText1,
                    children: [
                      TextSpan(
                        style: primaryTextTheme.bodyText1,
                        text: 'Terms\nCondition',
                        recognizer: TapGestureRecognizer()
                          ..onTap = onPressCondition,
                      ),
                      TextSpan(
                        style: accentTextTheme.bodyText1,
                        text: ' & ',
                      ),
                      TextSpan(
                        style: primaryTextTheme.bodyText1,
                        text: 'Privacy Policy',
                        recognizer: TapGestureRecognizer()
                          ..onTap = onPressPolicy,
                      )
                    ]),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  void dismissKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void goSignIn() => Navigator.pop(context);

  void onPressCondition() {
    print('onPressCondition');
  }

  void onPressPolicy() {
    print('onPressPolicy');
  }

  void signUp() {}

  void loginWithFaceBook() {}

  void loginWithGoogle() {}
}
