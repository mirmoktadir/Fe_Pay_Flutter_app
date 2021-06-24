import 'package:fe_pay/screens/bank_screens/manage_bank_screen.dart';
import 'package:fe_pay/screens/contact_screen/manage_contact_screen.dart';

import 'package:fe_pay/screens/user_screens/log_in_screen_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fe_pay/screens/user_screens/edit_profile_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fe_pay/components/profile_option.dart';
import 'package:fe_pay/components/constants.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'ProfileScreen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 4;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        leadingWidth: 250,
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 32),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, LogInScreenDefault.id);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 17,
                color: Colors.white,
              ),
              Text(
                'Back',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.solidEdit),
            iconSize: 17,
            onPressed: () {
              Navigator.pushNamed(context, EditProfileScreen.id);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff0070ba),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'images/Alice.png',
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Alice Cooper',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/euroicon.png'),
                            Text(
                              '  TAC 250.0',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('images/euroicon.png'),
                            Text(
                              '  DKK 250.0',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'NOTIFICATIONS',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Send Push-notification',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          ),
                          CupertinoSwitch(
                            activeColor: kPrimaryColor,
                            value: isSwitched,
                            onChanged: (value) {
                              setState(
                                () {
                                  isSwitched = value;
                                  return (isSwitched);
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SUPPORT',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey),
                        ),
                        ProfileOptionCard(
                          text: 'Manage Bank',
                          onPressed: () {
                            Navigator.pushNamed(context, ManageBankScreen.id);
                          },
                        ),
                        ProfileOptionCard(
                          text: 'Manage Contacts',
                          onPressed: () {
                            Navigator.pushNamed(
                                context, ManageContactScreen.id);
                          },
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        ProfileOptionCard(
                          text: 'Privacy Policy',
                          onPressed: () {},
                        ),
                        ProfileOptionCard(
                          text: 'FAQs',
                          onPressed: () {},
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        ProfileOptionCard(
                          text: 'Contact US',
                          onPressed: () {},
                        ),
                        ProfileOptionCard(
                          text: 'Delete Account',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
