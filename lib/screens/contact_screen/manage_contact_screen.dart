import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/components/contact_fav_card.dart';
import 'package:fe_pay/screens/user_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fe_pay/components/contact_card.dart';

class ManageContactScreen extends StatefulWidget {
  static const String id = 'ManageContactScreen';

  @override
  _ManageContactScreenState createState() => _ManageContactScreenState();
}

class _ManageContactScreenState extends State<ManageContactScreen> {
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
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Contacts',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
        leadingWidth: 250,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              iconSize: 17,
              onPressed: () {},
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.id);
              },
              child: Text(
                'Back',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          //main column
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 19, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select From Favourites',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.ellipsisH,
                        size: 18,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 171,
                width: 375,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  childAspectRatio: (2 / 3),
                  mainAxisSpacing: 10,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 19),
                  physics: BouncingScrollPhysics(),
                  children: [
                    ContactFavCard(
                      imageUrl: 'images/eclipse0.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse1.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse2.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse3.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse4.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse5.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse0.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse1.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse2.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse3.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse4.png',
                      name: 'Steven paule',
                    ),
                    ContactFavCard(
                      imageUrl: 'images/eclipse5.png',
                      name: 'Steven paule',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 19, top: 35),
                child: Column(
                  children: [
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
                    ),
                    ContactCard(
                      imageUrl: 'images/Alice.png',
                      name: 'Atiar Talukdar',
                      email: 'contact@atiar.info',
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
