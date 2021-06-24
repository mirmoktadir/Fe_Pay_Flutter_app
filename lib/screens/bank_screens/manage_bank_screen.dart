import 'package:fe_pay/screens/bank_screens/update_bank_screen.dart';
import 'package:fe_pay/screens/user_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:fe_pay/components/bank_card.dart';
import 'package:fe_pay/components/rounded_button.dart';
import 'package:fe_pay/components/constants.dart';

class ManageBankScreen extends StatefulWidget {
  static const String id = 'ManageBanksScreen';
  @override
  _ManageBankScreenState createState() => _ManageBankScreenState();
}

class _ManageBankScreenState extends State<ManageBankScreen> {
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
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              size: 30,
              color: Color(0xff0070ba),
            ),
            onPressed: () {
              Navigator.pushNamed(context, UpdateBankScreen.id);
            },
          ),
        ],
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 32),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, ProfileScreen.id);
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 57),
            child: RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, UpdateBankScreen.id);
              },
              text: 'Edit/Update',
              color: kPrimaryColor,
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
