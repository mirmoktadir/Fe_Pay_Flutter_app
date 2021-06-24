import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff0070ba);
const kInputTextDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);
const kTextRowStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.w400);
const kArrowForwardIcon = Icon(
  Icons.arrow_forward_ios_sharp,
  color: Colors.grey,
  size: 17,
);
