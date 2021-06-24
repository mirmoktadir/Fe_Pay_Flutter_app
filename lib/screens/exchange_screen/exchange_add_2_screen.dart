import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/screens/exchange_screen/add_success_screen.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_add_screen.dart';
import 'package:fe_pay/screens/user_screens/user_dashboard_screen.dart';
import 'package:flutter/material.dart';

class ExchangeAddScreen2 extends StatefulWidget {
  static const String id = 'ExchangeAddScreen2';

  @override
  _ExchangeAddScreen2State createState() => _ExchangeAddScreen2State();
}

class _ExchangeAddScreen2State extends State<ExchangeAddScreen2> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  createAlert3Dialog(BuildContext context) {
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
                'Exchange successful',
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
                        Navigator.pushNamed(context, ExchangeAddScreen.id);
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xfff8f8f8)),
                      ),
                      child: Text(
                        'Add Again',
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
            Navigator.pushNamed(context, ExchangeAddScreen.id);
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
                  'You are adding  50TAC',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'Roboto'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 34,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 140,
                      width: 175,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/button_bank.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 140,
                      width: 175,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/button_card.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'You Can transfer fund to our Account',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ExchangeData(
                  auth: 'Name',
                  data: 'FE Money',
                ),
                ExchangeData(
                  auth: 'Bank Name',
                  data: '141589999234',
                ),
                ExchangeData(
                  auth: 'Bank Name',
                  data: 'ABC BANK',
                ),
                ExchangeData(
                  auth: 'Amount',
                  data: '\$50',
                ),
                ExchangeData(
                  auth: 'Unique ID',
                  data: 'TX55-1245',
                ),
              ],
            ),
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
                                'Please enter this Unique ID:TX55-1245',
                              ),
                            ),
                          ),
                          Flexible(
                            child: Center(
                              child: Text(
                                'While Transferring the money',
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
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 45,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AddSuccessScreen.id);
                createAlert3Dialog(context);
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

//////////
class ExchangeData extends StatelessWidget {
  ExchangeData({this.auth, this.data});
  final String auth;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 105,
            child: Text(
              auth,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff828282),
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            width: 130,
            child: Text(
              data,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: 'Roboto',
                color: Color(0xff333333),
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
