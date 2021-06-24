import 'package:fe_pay/screens/user_screens/change_password_screen.dart';
import 'package:fe_pay/screens/user_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:fe_pay/components/constants.dart';

class EditProfileScreen extends StatefulWidget {
  static const String id = 'EditProfileScreen';
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String name;
  String email;
  String phoneNo;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
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
            Navigator.pushNamed(context, ProfileScreen.id);
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
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * .30,
              padding: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xff0070ba),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 90,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'images/Alice.png',
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    right: 135,
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: Icon(
                          Icons.camera_alt,
                          size: 24,
                          color: Color(0xffee6855),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 85,
                      right: 140,
                      child: SizedBox(
                        height: 12,
                        width: 12,
                        child: FloatingActionButton(
                          backgroundColor: Color(0xffee6855),
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            size: 11,
                            color: Colors.white,
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .23,
            left: 15,
            right: 15,
            child: Card(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width * .90,
                height: MediaQuery.of(context).size.height * .50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      keyboardType: TextInputType.name,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        name = value;
                      },
                      decoration: kInputTextDecoration.copyWith(
                        hintText: 'Alice Cooper',
                        hintStyle: TextStyle(
                          height: 2.1,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        labelText: 'User name',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: kInputTextDecoration.copyWith(
                        hintText: 'alice@gmail.com',
                        hintStyle: TextStyle(
                          height: 2.1,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        labelText: 'Email',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        phoneNo = value;
                      },
                      decoration: kInputTextDecoration.copyWith(
                        hintText: '+09556355111',
                        hintStyle: TextStyle(
                          height: 2.1,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        labelText: 'Phone',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: 300,
                            child: TextField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              textAlign: TextAlign.start,
                              onChanged: (value) {
                                name = value;
                              },
                              decoration: kInputTextDecoration.copyWith(
                                hintText: '********',
                                hintStyle: TextStyle(
                                  height: 2.1,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                labelText: 'Password',
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            icon: ImageIcon(
                              AssetImage('images/lock-icon.png'),
                              size: 24,
                              color: Color(0xff0070ba),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, ChangePassScreen.id);
                            })
                        // IconButton(
                        //   icon: Icon(
                        //     FontAwesomeIcons.unlockAlt,
                        //     size: 15,
                        //     color: kPrimaryColor,
                        //   ),
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, ChangePassScreen.id);
                        //   },
                        // ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
