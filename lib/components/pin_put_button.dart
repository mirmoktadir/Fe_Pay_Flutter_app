import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class PinPutButton extends StatefulWidget {
  @override
  _PinPutButtonState createState() => _PinPutButtonState();
}

class _PinPutButtonState extends State<PinPutButton> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PinPut(
        fieldsCount: 4,
        onSubmit: (String pin) => _showSnackBar(pin, context),
        focusNode: _pinPutFocusNode,
        controller: _pinPutController,
        submittedFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(100),
        ),
        selectedFieldDecoration: _pinPutDecoration,
        followingFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Color(0xffbdbdbd),
          ),
        ),
        eachFieldHeight: 30,
        eachFieldWidth: 30,
        keyboardType: TextInputType.phone,
        obscureText: '*',
        textStyle: TextStyle(
          fontSize: 45,
        ),
        onTap: () {},
      ),
    );
  }
}
