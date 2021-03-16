import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodude/routes/route_name.dart';
import 'package:foodude/widgets/buttons/button_submit.dart';
import 'package:foodude/widgets/headers/header_back.dart';

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
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderBack(),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign In',
                          style: Theme.of(context).accentTextTheme.headline2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: RichText(
                            text: TextSpan(
                                text: "Don't have an account? ",
                                style:
                                    Theme.of(context).accentTextTheme.bodyText2,
                                children: [
                                  TextSpan(
                                      text: 'Sign up now!',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyText2,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = goSignUp)
                                ]),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email or Phone Number',
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 20)),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              onPressed: onForgotPassword,
                              child: Text(
                                'Forgot Password?',
                              ),
                            ),
                          ],
                        ),
                        ButtonSubmit(title: 'SIGN IN', onPress: login),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Text('OR'),
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
                        ButtonSubmit(
                          title: 'CONTINUE WITH GOOGLE',
                          onPress: loginWithGoogle,
                          icon: Image.asset("assets/images/google.png"),
                          background: Color(0xff4285F4),
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
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
