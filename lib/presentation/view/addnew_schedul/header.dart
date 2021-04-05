import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';

Container bodyHeader() {
  return Container(
    color: Colore.appBarColor,
    height: 185,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 90,
          width: 90,
          decoration:
              BoxDecoration(color: Color(0xff5D96AD), shape: BoxShape.circle),
          child: Icon(
            Icons.date_range,
            color: Colors.white,
            size: 50,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'New Schedule',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              wordSpacing: 1,
              letterSpacing: 0.8),
        )
      ],
    ),
  );
}
