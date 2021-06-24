import 'package:fe_pay/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactCard extends StatelessWidget {
  ContactCard({this.imageUrl, this.name, this.email});
  final String imageUrl;
  final String name;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      margin: EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imageUrl), fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          email,
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.ellipsisV,
                  size: 18,
                  color: kPrimaryColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 17,
          )
        ],
      ),
    );
  }
}
