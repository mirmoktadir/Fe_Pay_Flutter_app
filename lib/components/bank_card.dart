import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final String image;
  final String bankName;
  final String userName;
  final String number;
  BankCard({this.image, this.bankName, this.userName, this.number});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.pushNamed();
      },
      child: Container(
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
                    image,
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
                bankName,
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
                  userName,
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
                number,
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
    );
  }
}
