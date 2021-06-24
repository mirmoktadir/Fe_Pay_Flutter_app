import 'package:flutter/material.dart';

class ContactFavCard extends StatelessWidget {
  ContactFavCard({this.imageUrl, this.name});
  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        width: 92,
        margin: EdgeInsets.only(bottom: 4),
        child: Column(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Center(
              child: Text(name),
            ),
          ],
        ),
      ),
    );
  }
}
