import 'package:fe_pay/screens/user_screens/log_in_screen.dart';
import 'package:fe_pay/screens/user_screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:fe_pay/components/rounded_button.dart';
import 'package:fe_pay/components/pin_put_button.dart';
import 'package:fe_pay/components/fe_pay_logo.dart';
import 'package:fe_pay/components/constants.dart';

class LogInScreenDefault extends StatefulWidget {
  static const String id = 'LogInScreenDefault';
  @override
  _LogInScreenDefaultState createState() => _LogInScreenDefaultState();
}

class _LogInScreenDefaultState extends State<LogInScreenDefault> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FEPayLogo(),
            Text(
              'Continue As \"contact@gmail.com\"',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff333333),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(276, 16),
              ),
              onPressed: () {},
              child: Text(
                'Click Here To Change',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 230,
              height: 40,
              child: PinPutButton(),
            ),
            SizedBox(
              height: 50,
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, LogInScreen.id);
              },
              text: 'CONTINUE',
              color: kPrimaryColor,
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
          ],
        ),
      ),
    );
  }
}
