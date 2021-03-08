import 'package:flutter/material.dart';

class QuickTransferBar extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final IconData icon;
  final GestureTapCallback onpress;

  const QuickTransferBar({
    Key key,
    @required this.color,
    @required this.text1,
    @required this.text2,
    @required this.icon,
    @required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          width: double.infinity,
          color: color,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      text2,
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Icon(
                  icon,
                  color: Colors.white60,
                  size: 80,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
