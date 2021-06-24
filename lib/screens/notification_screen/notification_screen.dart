import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/components/typ1_notific_card.dart';
import 'package:fe_pay/components/typ2_notific_card.dart';
import 'package:fe_pay/screens/user_screens/user_dashboard_screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  static const String id = 'NotificationScreen';

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Notification',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        leadingWidth: 250,
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21, right: 17, top: 10),
            child: Column(
              children: [
                Notification1Card(
                  imageUrl: 'images/noti2.png',
                  heading: 'System',
                  bodyText: 'New feature has been available.Have a look.',
                  date: '12.6.2021',
                  time: '5:30PM',
                ),
                Notification1Card(
                  imageUrl: 'images/notify_font.png',
                  heading: 'info',
                  bodyText: 'New feature has been available.Have a look.',
                  date: '12.6.2021',
                  time: '5:30PM',
                ),
                Notification1Card(
                  imageUrl: 'images/noti3.png',
                  heading: 'Request to withdraw money',
                  bodyText: 'New feature has been available.Have a look.',
                  date: '12.6.2021',
                  time: '5:30PM',
                ),
                Notification2Card(
                  imageUrl: 'images/noti1.png',
                  heading: 'Request to send money',
                  bodyText: 'New feature has been available.Have a look.',
                  date: '12.6.2021',
                  time: '5:30PM',
                ),
                Notification1Card(
                  imageUrl: 'images/noti0.png',
                  heading: 'Transfer 15 TAC to ABC Bank',
                  bodyText: 'New feature has been available.Have a look.',
                  date: '12.6.2021',
                  time: '5:30PM',
                ),
                Notification1Card(
                  imageUrl: 'images/noti2.png',
                  heading: 'System',
                  bodyText: 'New feature has been available.Have a look.',
                  date: '12.6.2021',
                  time: '5:30PM',
                ),
                Notification1Card(
                  imageUrl: 'images/notify_font.png',
                  heading: 'Info',
                  bodyText: 'New feature has been available.Have a look.',
                  date: '12.6.2021',
                  time: '5:30PM',
                ),
              ],
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
