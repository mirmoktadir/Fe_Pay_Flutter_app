import 'package:fe_pay/components/rounded_button.dart';
import 'package:fe_pay/screens/bank_screens/manage_bank_screen.dart';
import 'package:fe_pay/screens/user_screens/user_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:fe_pay/components/constants.dart';

class UpdateBankScreen extends StatefulWidget {
  static const String id = 'UpdateBankScreen';
  @override
  _UpdateBankScreenState createState() => _UpdateBankScreenState();
}

class _UpdateBankScreenState extends State<UpdateBankScreen> {
  String bankName;
  String accountName;
  String accountNumber;
  String routingNumber;
  int _selectedIndex = 4;
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
          'Manage Banks',
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
            Navigator.pushNamed(context, ManageBankScreen.id);
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
        padding: const EdgeInsets.symmetric(horizontal: 46),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/frame0.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14),
                            height: 100,
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ABC Bank',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Steven Paule',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4f4f4f),
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '123 5568 2001',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4f4f4f),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bank Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    bankName = value;
                  },
                  decoration: kInputTextDecoration.copyWith(
                    hintText: 'ABC Bank',
                  ),
                  style: TextStyle(
                    color: Color(0xffbdbdbd),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Account Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    accountName = value;
                  },
                  decoration:
                      kInputTextDecoration.copyWith(hintText: 'Steven Paule'),
                  style: TextStyle(
                    color: Color(0xffbdbdbd),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Account Number',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    accountNumber = value;
                  },
                  decoration:
                      kInputTextDecoration.copyWith(hintText: '12127861223515'),
                  style: TextStyle(
                    color: Color(0xffbdbdbd),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Routing Number',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    routingNumber = value;
                  },
                  decoration:
                      kInputTextDecoration.copyWith(hintText: '555-666-888'),
                  style: TextStyle(
                    color: Color(0xffbdbdbd),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: RoundedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, UserDashboardScreen.id);
                    },
                    text: 'Edit/Update',
                    color: kPrimaryColor,
                  ),
                ),
              ],
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
