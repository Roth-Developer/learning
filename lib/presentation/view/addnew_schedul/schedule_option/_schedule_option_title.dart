import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';

class ScheduleOptionTitle extends StatelessWidget {
  final String title;
  const ScheduleOptionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.7 / 4,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colore.appBarColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
          ),
          Center(
            child: Text(
              title,
              style: TextStyle(
                  inherit: false,
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
