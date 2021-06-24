import 'package:flutter/material.dart';

class FEPayLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 49,
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/mainlogo.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 27),
            height: 46,
            width: 135,
            child: Center(
              child: Text(
                'FE PAY',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0070ba),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
