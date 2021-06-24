import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_add_screen.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_withdraw_screen.dart';
import 'package:fe_pay/screens/notification_screen/notification_screen.dart';
import 'package:fe_pay/screens/transfer_screen/request/transfer_req_amnt_screen.dart';
import 'package:flutter/material.dart';

class UserDashboardScreen extends StatefulWidget {
  static const String id = 'UserDashboardScreen';
  @override
  _UserDashboardScreenState createState() => _UserDashboardScreenState();
}

class _UserDashboardScreenState extends State<UserDashboardScreen> {
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
        children: [
          Stack(
            children: [
              Container(
                height: 181,
                decoration: BoxDecoration(
                  color: Color(0xff0070ba),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 40,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 86,
                        width: MediaQuery.of(context).size.width * .9,
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/dash.png'),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 18),
                              width: 180,
                              height: 57,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Steven Paule',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Color(0xff1cc8fc)),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'images/euro.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 6),
                                            child: Text(
                                              'TAC 250.0',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'images/euro.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 6),
                                            child: Text(
                                              'DKK 250.0',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 65,
                right: 25,
                child: IconButton(
                  icon: ImageIcon(
                    AssetImage('images/bell_icon.png'),
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, NotificationScreen.id);
                  },
                ),
              ),
              Positioned(
                top: 72,
                right: 25,
                child: IconButton(
                  icon: Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  color: Color(0xffee6855),
                  onPressed: () {
                    Navigator.pushNamed(context, NotificationScreen.id);
                  },
                ),
              ),
              Positioned(
                top: 58,
                right: 19,
                child: IconButton(
                  icon: Icon(
                    Icons.circle,
                    size: 9,
                  ),
                  color: Color(0xffee6855),
                  onPressed: () {
                    Navigator.pushNamed(context, NotificationScreen.id);
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 45,
          ),
          /////////////////////////////
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 120,
                        color: Colors.white,
                      ),
                      Container(
                        width: 100,
                        height: 120,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ExchangeAddScreen.id);
                              },
                              child: Container(
                                height: 75,
                                width: 68,
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
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage('images/jazz1.png'),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Center(
                                child: Text(
                              'Pending Request',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -15,
                        left: 62,
                        child: IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage('images/testtop.png'),
                            color: Color(0xffee6855),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 79,
                        child: Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                              child: Text(
                            '4',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 120,
                        color: Colors.white,
                      ),
                      Container(
                        width: 100,
                        height: 120,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ExchangeWithDrawScreen.id);
                              },
                              child: Container(
                                height: 75,
                                width: 68,
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
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage('images/jazz2.png'),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Center(
                                child: Text(
                              'Withdraw Request',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -15,
                        left: 60,
                        child: IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage('images/testtop.png'),
                            color: Color(0xffee6855),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 77,
                        child: Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                              child: Text(
                            '0',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 120,
                        color: Colors.white,
                      ),
                      Container(
                        width: 100,
                        height: 120,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, TransferReqAmntScreen.id);
                              },
                              child: Container(
                                height: 75,
                                width: 68,
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
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage('images/jazz3.png'),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Center(
                                child: Text(
                              'Bank Transfer',
                              style: TextStyle(fontSize: 12),
                            )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -15,
                        left: 58,
                        child: IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage('images/testtop.png'),
                            color: Color(0xffee6855),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 75,
                        child: Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                              child: Text(
                            '1',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ///////////////////////
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff4960f9),
                        Color(0xff1433ff),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: 0,
                  child: Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width * .6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/grad.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '1.0',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'DKK',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Text(
                                '=',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '1.0',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'TAC',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '*The Exchange rate will be same until December 2021 ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
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
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Do You Know?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Flexible(
                      child: Center(
                        child: Text(
                          'TAC Money is one of the popular virtual money app in Denmark.You can make payment using it.Able to send money to your friend and family.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
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
