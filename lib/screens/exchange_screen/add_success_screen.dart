import 'package:fe_pay/components/bank_card.dart';
import 'package:flutter/material.dart';

class AddSuccessScreen extends StatefulWidget {
  static const String id = 'AddSuccessScreen';
  @override
  _AddSuccessScreenState createState() => _AddSuccessScreenState();
}

class _AddSuccessScreenState extends State<AddSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              height: 61,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    spreadRadius: .1,
                    blurRadius: .1,
                    offset: Offset(1, 1),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'You are adding  50TAC',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'Roboto'),
                ),
              ),
            ),
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/slider_icon.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Slide to Withdraw',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
