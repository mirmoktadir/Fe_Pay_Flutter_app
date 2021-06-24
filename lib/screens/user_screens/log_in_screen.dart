import 'package:fe_pay/screens/user_screens/profile_screen.dart';
import 'package:fe_pay/screens/user_screens/reset_password_screen.dart';
import 'package:fe_pay/screens/user_screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:fe_pay/components/fe_pay_logo.dart';
import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/components/rounded_button.dart';

import 'change_password_screen.dart';
import 'change_password_success_screen.dart';

class LogInScreen extends StatefulWidget {
  static const String id = 'LogInScreen';
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  String email;
  String password;
  createAlert2Dialog(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            scrollable: true,
            backgroundColor: Color(0xfff8f8f8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            title: Center(
              child: Text(
                'Password Request Sent',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            content: Column(
              children: [
                Text(
                  'Check your email for the link to reset your password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 22,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 43),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ChangePassScreen.id);
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xfff8f8f8)),
                        ),
                        child: Text(
                          'OK',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Roboto',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }

  createAlert1Dialog(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            scrollable: true,
            backgroundColor: Color(0xfff8f8f8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            title: Center(
              child: Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            content: Column(
              children: [
                Text(
                  'Please enter the email address for your account.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kInputTextDecoration.copyWith(
                    fillColor: Colors.white,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      height: 2.1,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                )
              ],
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 22,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 43),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ChangePassScreen.id);
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xfff8f8f8)),
                        ),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Roboto',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, ChangePasswordSuccessScreen.id);
                          createAlert2Dialog(context);
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xfff8f8f8)),
                        ),
                        child: Text(
                          'OK',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FEPayLogo(),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 57),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Enter Your Email ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '*',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffee6855),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kInputTextDecoration.copyWith(
                      hintText: 'example@gmail.com'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter Password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration:
                      kInputTextDecoration.copyWith(hintText: 'enter password'),
                ),
                SizedBox(
                  height: 16,
                ),
                RoundedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileScreen.id);
                  },
                  text: 'LOG IN',
                  color: kPrimaryColor,
                ),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(276, 16),
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpScreen.id);
                  },
                  child: Text(
                    'Don\'t have any account? SignUp',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(276, 16),
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, ResetPasswordScreen.id);

                    createAlert1Dialog(context);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffee6855),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
