import 'package:flutter/material.dart';
import 'package:foodude/themes/app_colors.dart';
import 'package:foodude/themes/styles_text.dart';
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
                          style: AppTextStyles.largeTitle,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Enter your Email and new Password\nfor sign up, or",
                            ),
                          ],
                        ),
                        FlatButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: goSignIn,
                          child: Text(
                            'Already have account?',
                            style: TextStyle(color: AppColors.primary),
                          ),
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
                            Text('OR'),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.center,
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

  void goSignIn() => Navigator.pop(context);

  void signUp() {}

  void loginWithFaceBook() {}

  void loginWithGoogle() {}
}
