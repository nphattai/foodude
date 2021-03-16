import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodude/themes/app_colors.dart';
import 'package:foodude/themes/app_text_styles.dart';
import 'package:foodude/widgets/buttons/button_submit.dart';
import 'package:foodude/widgets/headers/header_back.dart';

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
                          'Sign Up',
                          style: AppTextStyle.headline2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                              text:
                                  "Enter your Email and new Password\nfor sign up, or ",
                              style: AppTextStyle.bodyText1,
                              children: [
                                TextSpan(
                                  style: AppTextStyle.bodyText1.merge(
                                    TextStyle(
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  text: 'Already have account?',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = goSignIn,
                                )
                              ]),
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
                        Padding(padding: const EdgeInsets.only(bottom: 20)),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Confirm Password',
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 20)),
                        ButtonSubmit(title: 'SIGN UP', onPress: signUp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "By signing up you agree to our ",
                                  style: AppTextStyle.bodyText1,
                                  children: [
                                    TextSpan(
                                      style: AppTextStyle.bodyText1.merge(
                                        TextStyle(
                                          color: AppColors.primary,
                                        ),
                                      ),
                                      text: 'Terms\nCondition',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = onPressCondition,
                                    ),
                                    TextSpan(
                                      style: AppTextStyle.bodyText1,
                                      text: ' & ',
                                    ),
                                    TextSpan(
                                      style: AppTextStyle.bodyText1.merge(
                                        TextStyle(
                                          color: AppColors.primary,
                                        ),
                                      ),
                                      text: 'Privacy Policy',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = onPressPolicy,
                                    )
                                  ]),
                            ),
                          ],
                        ),
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
