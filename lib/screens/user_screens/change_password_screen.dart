import 'package:fe_pay/screens/user_screens/change_password_success_screen.dart';
import 'package:fe_pay/screens/user_screens/edit_profile_screen.dart';
import 'package:fe_pay/screens/user_screens/log_in_screen_default.dart';
import 'package:fe_pay/screens/user_screens/profile_screen.dart';
import 'package:fe_pay/screens/user_screens/reset_password_screen.dart';

import 'package:flutter/material.dart';
import 'package:fe_pay/components/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChangePassScreen extends StatefulWidget {
  static const String id = 'ChangePassScreen';

  @override
  _ChangePassScreenState createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  String oldPassword;
  String newPassword;
  String verifyPassword;
  String email;
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
                          Navigator.pushNamed(context, ProfileScreen.id);
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

  ///////////////
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
                height: 25,
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Change Password',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        leadingWidth: 250,
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 32),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, EditProfileScreen.id);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 17,
                color: Colors.black,
              ),
              Text(
                'Back',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileScreen.id);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                      color: kPrimaryColor,
                      fontSize: 17,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LogInScreenDefault.id);
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Roboto',
                      color: kPrimaryColor,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'SET A PASSWORD',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w900,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            ('Old password'),
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                          Container(
                            width: 140,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: SizedBox(
                                    width: 70,
                                    child: TextFormField(
                                      obscureText: true,
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        oldPassword = value;
                                      },
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17),
                                      decoration: InputDecoration(
                                        hintText: 'Required',
                                        hintStyle: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: Colors.grey,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            ('New password'),
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                          Container(
                            width: 140,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: SizedBox(
                                    width: 70,
                                    child: TextFormField(
                                      obscureText: true,
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        newPassword = value;
                                      },
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17),
                                      decoration: InputDecoration(
                                        hintText: 'Required',
                                        hintStyle: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            ('verify'),
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                          Container(
                            width: 270,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: SizedBox(
                                    width: 70,
                                    child: TextFormField(
                                      obscureText: true,
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        verifyPassword = value;
                                      },
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17),
                                      decoration: InputDecoration(
                                        hintText: 'Required',
                                        hintStyle: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ResetPasswordScreen.id);
                createAlert1Dialog(context);
              },
              child: Text(
                'Forgot Your Password?',
                style: TextStyle(
                  color: Color(0xfff43426),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
