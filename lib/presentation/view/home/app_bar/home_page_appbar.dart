import 'package:flutter/material.dart';

AppBar homePageAppbar() {
  return AppBar(
    title: Text(
      'ABA\' Mobile',
      style: TextStyle(fontWeight: FontWeight.w800),
    ),
    backgroundColor: Color(0xff005E84),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.notifications_none,
          size: 35,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8, right: 15),
        child: Icon(
          Icons.phone_in_talk_outlined,
          size: 35,
        ),
      ),
    ],
  );
}
