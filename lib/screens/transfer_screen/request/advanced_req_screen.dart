import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/components/contact_fav_card.dart';
import 'package:fe_pay/screens/history_screens/transfer_history_detail_screen.dart';
import 'package:fe_pay/screens/transfer_screen/request/transfer_req_status_screen.dart';
import 'package:fe_pay/screens/transfer_screen/send/advanced_send_screen.dart';
import 'package:fe_pay/screens/user_screens/user_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/rendering.dart';

class AdvancedReqScreen extends StatefulWidget {
  static const String id = 'AdvancedReqScreen';

  @override
  _AdvancedReqScreenState createState() => _AdvancedReqScreenState();
}

class _AdvancedReqScreenState extends State<AdvancedReqScreen> {
  String tac;
  String emailNo;
  bool _value = false;
  createAlert5Dialog(BuildContext context) {
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
                'Request successful',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'TAC 50 requested to contact@gmail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
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
                      child: Center(
                        child: Text(
                          'Okay',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, TransferHistoryDetailScreen.id);
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xfff8f8f8)),
                      ),
                      child: Center(
                        child: Text(
                          'History',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            fontSize: 14,
                          ),
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
          'Advance Transfer',
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
        actions: [
          ImageIcon(
            AssetImage('images/forward_icon.png'),
            size: 80,
            color: Color(0xff1565c0),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: SizedBox(
                        height: 40,
                        width: 174,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AdvancedSendScreen.id);
                          },
                          child: Center(
                            child: Text(
                              'Send',
                              style: TextStyle(
                                  color: Color(0xff828282),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: SizedBox(
                        height: 40,
                        width: 174,
                        child: TextButton(
                          ///////////////
                          onPressed: () {
                            Navigator.pushNamed(
                                context, TransferReqStatusScreen.id);
                            createAlert5Dialog(context);
                          },
                          child: Center(
                            child: Text(
                              'Request',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto'),
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
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Checkbox(
                              value: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                              activeColor: Color(0xff0070ba),
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.all(
                                Color(0xff0070ba),
                              ),
                            ),
                          ),
                          Container(
                            width: 220,
                            margin: EdgeInsets.only(left: 6),
                            child: Text(
                              'Request with FE-PAY Guarantee',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      ImageIcon(
                        AssetImage('images/notify_font.png'),
                        color: Color(0xff0070ba),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            ('Enter Amount'),
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                          Container(
                            width: 140,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: SizedBox(
                                    width: 40,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        tac = value;
                                      },
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20),
                                      decoration: InputDecoration(
                                        hintText: '00',
                                        hintStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'TAC',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xffbdbdbd),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: IconButton(
                          icon: Icon(
                            Icons.send,
                            color: kPrimaryColor,
                            size: 22,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 2,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            '+5',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            '+10',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xff0070ba)),
                          onPressed: () {},
                          child: Text(
                            '+50',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            '+500',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 215,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            emailNo = value;
                          },
                          decoration: kInputTextDecoration.copyWith(
                            hintText: 'Enter Email or Phone Number',
                            hintStyle: TextStyle(
                              height: 2.1,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            FontAwesomeIcons.addressBook,
                            color: Colors.grey,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select From Favourites',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: 'Roboto'),
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.ellipsisH,
                        size: 16,
                        color: Color(0xff0070ba),
                      ),
                      onPressed: () {},
                    ),
                  ],
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
        ],
      ),
    );
  }
}
