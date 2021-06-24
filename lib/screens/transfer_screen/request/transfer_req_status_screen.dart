import 'package:fe_pay/components/bank_card.dart';

import 'package:flutter/material.dart';

class TransferReqStatusScreen extends StatefulWidget {
  static const String id = 'TransferReqStatusScreen';

  @override
  _TransferReqStatusScreenState createState() =>
      _TransferReqStatusScreenState();
}

class _TransferReqStatusScreenState extends State<TransferReqStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Transfer',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
        leadingWidth: 105,
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 32),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 17,
                color: Colors.black,
              ),
              Text(
                'Back',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        actions: [
          ImageIcon(
            AssetImage('images/forward_icon.png'),
            size: 80,
            color: Color(0xff1565c0),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: SizedBox(
                  height: 40,
                  width: 174,
                  child: TextButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Send',
                        style: TextStyle(
                            color: Color(0xff828282),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: 40,
                  width: 174,
                  child: TextButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Request',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xff0070ba),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 500,
            width: 414,
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              childAspectRatio: (1 / 2),
              crossAxisSpacing: 21,
              mainAxisSpacing: 40,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 77),
              children: <Widget>[
                BankCard(
                  image: 'images/frame0.png',
                  bankName: 'ABC Bank',
                  userName: 'Steven Paule',
                  number: '123 5568 2001',
                ),
                BankCard(
                  image: 'images/frame0.png',
                  bankName: 'ABC Bank',
                  userName: 'Steven Paule',
                  number: '123 5568 2001',
                ),
                BankCard(
                  image: 'images/frame0.png',
                  bankName: 'ABC Bank',
                  userName: 'Steven Paule',
                  number: '123 5568 2001',
                ),
                BankCard(
                  image: 'images/frame0.png',
                  bankName: 'ABC Bank',
                  userName: 'Steven Paule',
                  number: '123 5568 2001',
                ),
                BankCard(
                  image: 'images/frame0.png',
                  bankName: 'ABC Bank',
                  userName: 'Steven Paule',
                  number: '123 5568 2001',
                ),
                BankCard(
                  image: 'images/frame0.png',
                  bankName: 'ABC Bank',
                  userName: 'Steven Paule',
                  number: '123 5568 2001',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
