import 'package:flutter/material.dart';
import 'package:foodude/routes/route_name.dart';
import 'package:foodude/themes/app_colors.dart';
import 'package:foodude/themes/styles_text.dart';
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
                          style: AppTextStyles.largeTitle,
                        ),
                        Row(
                          children: [
                            Text(
                              "Don't have an account?",
                            ),
                            FlatButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, RouteName.signUpPage),
                              child: Text(
                                'Sign up now!',
                                style: TextStyle(color: AppColors.primary),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email or Phone Number',
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 20)),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, RouteName.signUpPage),
                              child: Text(
                                'Forgot Password?',
                              ),
                            ),
                          ],
                        ),
                        ButtonSubmit(title: 'SIGN IN', onPress: login),
                        Row(
                          children: [
                            Text('OR'),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        SizedBox(
                          height: 20,
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

  void dismissKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void login() {}

  void loginWithFaceBook() {}

  void loginWithGoogle() {}
}
