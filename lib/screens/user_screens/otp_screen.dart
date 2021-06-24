import 'package:fe_pay/screens/user_screens/log_in_screen.dart';
import 'package:fe_pay/screens/user_screens/submit_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:fe_pay/components/fe_pay_logo.dart';
import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/components/rounded_button.dart';

class OTPScreen extends StatefulWidget {
  static const String id = 'OTPScreen';

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 57),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FEPayLogo(),
            SizedBox(height: 35),
            Container(
              height: 55,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image(
                      image: AssetImage(
                        'images/notify_font.png',
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'We have sent you an OTP to Your Email address.Please enter the OTP.',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Enter OTP',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              textAlign: TextAlign.start,
              onChanged: (value) {
                otp = value;
              },
              decoration: kInputTextDecoration.copyWith(hintText: 'xxxxxx'),
            ),
            SizedBox(
              height: 16,
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, SubmitOtpScreen.id);
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
      ),
    );
  }
}
