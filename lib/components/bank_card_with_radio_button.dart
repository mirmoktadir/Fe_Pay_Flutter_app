import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BankCardWithRadio extends StatefulWidget {
  final String image;
  final String bankName;
  final String userName;
  final String number;
  BankCardWithRadio({this.image, this.bankName, this.userName, this.number});

  @override
  _BankCardWithRadioState createState() => _BankCardWithRadioState();
}

class _BankCardWithRadioState extends State<BankCardWithRadio> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = 1;
        });

        //Navigator.pushNamed();
      },
      onDoubleTap: () {
        setState(() {
          _value = 0;
        });
      },
      child: Stack(
        children: [
          Container(
            height: 260,
            width: 102,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        widget.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xff0070ba),
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    widget.bankName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  child: Center(
                    child: Text(
                      widget.userName,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    widget.number,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 2,
            right: 2,
            child: Icon(
              FontAwesomeIcons.circle,
              color: Colors.black,
              size: 20,
            ),
          ),
          Positioned(
            top: 3,
            right: 3,
            child: Icon(
              Icons.check,
              color: _value == 1 ? Colors.white : Colors.black,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
