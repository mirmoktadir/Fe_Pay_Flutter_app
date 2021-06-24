import 'package:flutter/material.dart';
import 'package:fe_pay/components/constants.dart';

class ProfileOptionCard extends StatelessWidget {
  const ProfileOptionCard({this.text, @required this.onPressed});
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: kTextRowStyle,
        ),
        IconButton(
          icon: kArrowForwardIcon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
