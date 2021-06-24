import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/components/history_card.dart';
import 'package:fe_pay/screens/history_screens/transfer_history_detail_screen.dart';
import 'package:fe_pay/screens/user_screens/user_dashboard_screen.dart';
import 'package:flutter/material.dart';

class TransferHistoryScreen extends StatefulWidget {
  static const String id = 'TransferHistoryScreen';

  @override
  _TransferHistoryScreenState createState() => _TransferHistoryScreenState();
}

class _TransferHistoryScreenState extends State<TransferHistoryScreen> {
  int _selectedIndex = 3;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
          'History',
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
            Navigator.pushNamed(context, UserDashboardScreen.id);
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, TransferHistoryDetailScreen.id);
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff0070ba),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 97,
                      margin: EdgeInsets.only(left: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/euro.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 6),
                            child: Text(
                              'TAC 250.0',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 97,
                      margin: EdgeInsets.only(right: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/euro.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 6),
                            child: Text(
                              'DKK 250.0',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            HistoryCard(
              imageUrl: 'images/Alice.png',
              name: 'Adiba',
              value: 500,
              color: Colors.green,
            ),
            HistoryCard(
              imageUrl: 'images/eclipse5.png',
              name: 'TX55-212',
              value: -1500,
              color: Colors.red,
            ),
            HistoryCard(
              imageUrl: 'images/Alice.png',
              name: 'Adiba',
              value: 100,
              color: Colors.red,
            ),
            HistoryCard(
              imageUrl: 'images/eclipse2.png',
              name: 'Steven',
              value: 500,
              color: Colors.green,
            ),
            HistoryCard(
              imageUrl: 'images/Alice.png',
              name: 'Adiba',
              value: 500,
              color: Colors.green,
            ),
            HistoryCard(
              imageUrl: 'images/eclipse3.png',
              name: 'Adiba',
              value: -50,
              color: Colors.red,
            ),
            HistoryCard(
              imageUrl: 'images/Alice.png',
              name: 'Adiba',
              value: 500,
              color: Colors.green,
            ),
            HistoryCard(
              imageUrl: 'images/Alice.png',
              name: 'Adiba',
              value: 500,
              color: Colors.green,
            ),
          ],
        ),
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
