import 'package:fe_pay/screens/exchange_screen/exchange_add_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class Notification2Card extends StatelessWidget {
  Notification2Card(
      {this.imageUrl, this.heading, this.bodyText, this.date, this.time});
  final String imageUrl;
  final String heading;
  final String bodyText;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      width: 376,
      child: Row(
        children: [
          Container(
            height: 35,
            width: 35,
            margin: EdgeInsets.only(right: 30),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.none,
                ),
                borderRadius: BorderRadius.circular(100)),
          ),
          Flexible(
            child: GestureDetector(
              child: Container(
                height: 103,
                width: 287,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      heading,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        bodyText,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Roboto',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 28,
                          width: 80,
                          child: TextButton(
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'Accept',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xff0070ba),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          height: 28,
                          width: 80,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Decline',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xffee6855),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.ellipsisV,
                size: 18,
                color: kPrimaryColor,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
