import 'package:fe_pay/components/bank_card.dart';
import 'package:fe_pay/components/constants.dart';

import 'package:flutter/material.dart';

class WithDrawSuccessScreen extends StatefulWidget {
  static const String id = 'WithDrawSuccessScreen';

  @override
  _WithDrawSuccessScreenState createState() => _WithDrawSuccessScreenState();
}

class _WithDrawSuccessScreenState extends State<WithDrawSuccessScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Color(0xffee6855),
        selectedIconTheme: IconThemeData(
          color: Color(0xffee6855),
        ),
        unselectedItemColor: kPrimaryColor,
        unselectedIconTheme: IconThemeData(color: kPrimaryColor),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/home.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/exchange.png'),
            ),
            label: 'Exchange',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/send.png')),
            label: 'Transfer',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/history.png')),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/grid-o.png')),
            label: 'setting',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
