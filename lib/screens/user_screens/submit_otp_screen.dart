import 'package:fe_pay/screens/user_screens/log_in_screen.dart';
import 'package:fe_pay/screens/user_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:fe_pay/components/fe_pay_logo.dart';
import 'package:fe_pay/components/rounded_button.dart';
import 'package:fe_pay/components/constants.dart';

class SubmitOtpScreen extends StatefulWidget {
  static const String id = 'SubmitOtpScreen';

  @override
  _SubmitOtpScreenState createState() => _SubmitOtpScreenState();
}

class _SubmitOtpScreenState extends State<SubmitOtpScreen> {
  String pin;
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
                Text(
                  'Set 4 Digit PIN Code',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    pin = value;
                  },
                  decoration: kInputTextDecoration.copyWith(hintText: 'XXXX'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Confirm PIN Code',
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
                    pin = value;
                  },
                  decoration: kInputTextDecoration.copyWith(hintText: 'XXXX'),
                ),
                SizedBox(
                  height: 16,
                ),
                RoundedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileScreen.id);
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
