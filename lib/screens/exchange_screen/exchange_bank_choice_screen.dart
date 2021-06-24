import 'package:fe_pay/components/bank_card_with_radio_button.dart';

import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_withdraw_acc_setting_screen.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_withdraw_screen.dart';
import 'package:fe_pay/screens/exchange_screen/withdraw_success_screen.dart';
import 'package:fe_pay/screens/user_screens/user_dashboard_screen.dart';
import 'package:flutter/material.dart';

class ExchangeBankChoiceScreen extends StatefulWidget {
  static const String id = 'ExchangeBankChoiceScreen ';

  @override
  _ExchangeBankChoiceScreenState createState() =>
      _ExchangeBankChoiceScreenState();
}

class _ExchangeBankChoiceScreenState extends State<ExchangeBankChoiceScreen> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  createAlert4Dialog(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            scrollable: true,
            backgroundColor: Color(0xfff8f8f8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            title: Center(
              child: Text(
                'Withdraw successful',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            content: Column(
              children: [
                Text(
                  'Your funds will be available in your bank account within next 1-3 working days.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, UserDashboardScreen.id);
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xfff8f8f8)),
                      ),
                      child: Text(
                        'Return Home',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ExchangeWithDrawScreen.id);
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xfff8f8f8)),
                      ),
                      child: Text(
                        'Withdraw Again',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Exchange',
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
          onPressed: () {
            Navigator.pushNamed(context, ExchangeWithdrawAccSettScreen.id);
          },
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
      ),
      body: Column(
        children: [
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
                  'You are withdrawing 50TAC',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'Roboto'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 410,
                width: 414,
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 3,
                  childAspectRatio: (1 / 2),
                  crossAxisSpacing: 21,
                  mainAxisSpacing: 40,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 36, vertical: 5),
                  children: <Widget>[
                    BankCardWithRadio(
                      image: 'images/frame0.png',
                      bankName: 'ABC Bank',
                      userName: 'Steven Paule',
                      number: '123 5568 2001',
                    ),
                    BankCardWithRadio(
                      image: 'images/frame1.png',
                      bankName: 'ABC Bank',
                      userName: 'Steven Paule',
                      number: '123 5568 2001',
                    ),
                    BankCardWithRadio(
                      image: 'images/frame2.png',
                      bankName: 'ABC Bank',
                      userName: 'Steven Paule',
                      number: '123 5568 2001',
                    ),
                    BankCardWithRadio(
                      image: 'images/frame3.png',
                      bankName: 'ABC Bank',
                      userName: 'Steven Paule',
                      number: '123 5568 2001',
                    ),
                    BankCardWithRadio(
                      image: 'images/frame4.png',
                      bankName: 'ABC Bank',
                      userName: 'Steven Paule',
                      number: '123 5568 2001',
                    ),
                    BankCardWithRadio(
                      image: 'images/frame5.png',
                      bankName: 'ABC Bank',
                      userName: 'Steven Paule',
                      number: '123 5568 2001',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 45,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, WithDrawSuccessScreen.id);
                createAlert4Dialog(context);
              },
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
                        'Slide to confirm',
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
