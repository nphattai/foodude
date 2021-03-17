import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodude/routes/route_name.dart';
import 'package:foodude/themes/app_colors.dart';
import 'package:foodude/widgets/buttons/button_submit.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dismissKeyboard,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: _buildSignInForm(context),
        ),
      ),
    );
  }

  Widget _buildSignInForm(BuildContext context) {
    final accentTextTheme = Theme.of(context).accentTextTheme;
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        height: screenHeight,
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Sign In',
            style: accentTextTheme.headline2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: RichText(
              text: TextSpan(
                  text: "Don't have an account? ",
                  style: accentTextTheme.bodyText1,
                  children: [
                    TextSpan(
                        text: 'Sign up now!',
                        style: primaryTextTheme.bodyText1,
                        recognizer: TapGestureRecognizer()..onTap = goSignUp)
                  ]),
            ),
          ),
          TextFormField(
            cursorColor: AppColors.neutral,
            style: accentTextTheme.bodyText1,
            decoration: InputDecoration(
              labelText: 'Email or Phone Number',
            ),
          ),
          Padding(padding: const EdgeInsets.only(bottom: 20)),
          TextFormField(
            cursorColor: AppColors.neutral,
            style: accentTextTheme.bodyText1,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: onForgotPassword,
                child: Text(
                  'Forgot Password?',
                  style: accentTextTheme.bodyText1,
                ),
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(AppColors.neutral_4)),
              ),
            ],
          ),
          ButtonSubmit(title: 'SIGN IN', onPress: login),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'OR',
                  style: accentTextTheme.bodyText1,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          ButtonSubmit(
            title: 'CONTINUE WITH FACEBOOK',
            onPress: loginWithFaceBook,
            icon: Image.asset("assets/images/facebook.png"),
            background: Color(0xff4460A0),
          ),
          SizedBox(height: 10),
          ButtonSubmit(
            title: 'CONTINUE WITH GOOGLE',
            onPress: loginWithGoogle,
            icon: Image.asset("assets/images/google.png"),
            background: Color(0xff4285F4),
          ),
        ]),
      ),
    );
  }

  void goSignUp() => Navigator.pushNamed(context, RouteName.signUpPage);

  void dismissKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void onForgotPassword() {}

  void login() {}

  void loginWithFaceBook() {}

  void loginWithGoogle() {}
}
