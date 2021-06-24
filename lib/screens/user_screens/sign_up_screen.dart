import 'package:fe_pay/screens/user_screens/log_in_screen.dart';
import 'package:fe_pay/screens/user_screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/components/fe_pay_logo.dart';
import 'package:fe_pay/components/rounded_button.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'SignUpScreen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String email;
  String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 57),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FEPayLogo(),
            SizedBox(
              height: 35,
            ),
            Column(
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
                  'Enter Mobile Number',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    phoneNumber = value;
                  },
                  decoration: kInputTextDecoration.copyWith(
                      hintText: '+88  01xxxxxxxxx'),
                ),
                SizedBox(
                  height: 16,
                ),
                RoundedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, OTPScreen.id);
                  },
                  text: 'SIGN UP',
                  color: kPrimaryColor,
                ),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LogInScreen.id);
                  },
                  child: Text(
                    'Already have an account? Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: kPrimaryColor,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    minimumSize: Size(276, 16),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
