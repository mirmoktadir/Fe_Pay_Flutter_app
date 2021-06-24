import 'package:fe_pay/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'edit_profile_screen.dart';

class ChangePasswordSuccessScreen extends StatefulWidget {
  static const String id = 'ChangePasswordSuccessScreen';

  @override
  _ChangePasswordSuccessScreenState createState() =>
      _ChangePasswordSuccessScreenState();
}

class _ChangePasswordSuccessScreenState
    extends State<ChangePasswordSuccessScreen> {
  String oldPassword;
  String newPassword;
  String verifyPassword;
  String email;
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: kPrimaryColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
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
          ],
        ),
      ),
    );
  }
}
