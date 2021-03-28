import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';

class GradientBar extends StatelessWidget {
  const GradientBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colore.appBarColor,
          height: 125,
          width: double.infinity,
        ),
        Container(
          height: 125,
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colore.appBarColor.withOpacity(0),
                    Color(0xff05AFCB),
                  ],
                  stops: [
                    0,
                    1,
                  ])),
        ),
        Container(
          height: 125,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Scheduled Transfers',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  '& Payments',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Organize your daily routine. Automate your future',
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
                Text(
                  'Or regular transfers and payments',
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          height: 125,
          bottom: -10,
          right: 0,
          child: Icon(
            Icons.calendar_today_outlined,
            size: 100,
            color: Colors.white54,
          ),
        ),
      ],
    );
  }
}
