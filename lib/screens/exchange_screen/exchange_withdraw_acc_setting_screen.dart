import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/components/rounded_button.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_withdraw_screen.dart';
import 'package:flutter/material.dart';

import 'exchange_bank_choice_screen.dart';

class ExchangeWithdrawAccSettScreen extends StatefulWidget {
  static const String id = 'ExchangeWithdrawAccSettScreen';

  @override
  _ExchangeWithdrawAccSettScreenState createState() =>
      _ExchangeWithdrawAccSettScreenState();
}

class _ExchangeWithdrawAccSettScreenState
    extends State<ExchangeWithdrawAccSettScreen> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String youName;
  String bankName;
  String acNumber;
  String routingNumber;
  String shortName;
  createAlert4Dialog(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            scrollable: true,
            backgroundColor: Color(0xfff8f8f8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            title: Center(
              child: Text(
                'Add New Bank Account',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto'),
              ),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      youName = value;
                    },
                    decoration:
                        kInputTextDecoration.copyWith(hintText: 'Your Name'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      bankName = value;
                    },
                    decoration:
                        kInputTextDecoration.copyWith(hintText: 'Bank Name'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      acNumber = value;
                    },
                    decoration:
                        kInputTextDecoration.copyWith(hintText: 'AC Number'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      routingNumber = value;
                    },
                    decoration: kInputTextDecoration.copyWith(
                        hintText: 'Routing Number'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      shortName = value;
                    },
                    decoration:
                        kInputTextDecoration.copyWith(hintText: 'Short Name'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: RoundedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ExchangeBankChoiceScreen.id);
                    },
                    text: 'SAVE',
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
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
            Navigator.pushNamed(context, ExchangeWithDrawScreen.id);
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
            height: 63,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29, right: 35),
            child: Container(
              width: 350,
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/notify_font.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Center(
                              child: Text(
                                'You havn\'t set any bank account yet.',
                              ),
                            ),
                          ),
                          Flexible(
                            child: Center(
                              child: Text(
                                'Please add your first withdraw account',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 305,
              width: 305,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bankgif.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 20,
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 50,
              width: 300,
              child: TextButton(
                onPressed: () {
                  createAlert4Dialog(context);
                }, /////////////////////////////
                child: Center(
                  child: Text(
                    'Add Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                    ),
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
