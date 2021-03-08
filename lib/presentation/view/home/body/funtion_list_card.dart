import 'package:flutter/material.dart';

class FuntionListCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final GestureTapCallback onpress;

  const FuntionListCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          color: Color(0xff004365),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 50,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
