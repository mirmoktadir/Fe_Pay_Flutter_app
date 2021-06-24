import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.text, this.color, @required this.onPressed});
  final String text;
  final Color color;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: Material(
        //elevation: 5.0,
        color: color,
        //borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 300.0,
          height: 50.0,
          child: Text(
            text,
            style: TextStyle(
                color: Color(0xfff2f2f2),
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
