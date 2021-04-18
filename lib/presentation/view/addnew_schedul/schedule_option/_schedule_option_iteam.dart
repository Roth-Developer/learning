import 'package:flutter/material.dart';

class ScheduleOptionIteam extends StatelessWidget {
  final String title;
  final Function onpress;
  const ScheduleOptionIteam({
    Key? key,
    required this.title,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onpress as void Function()?,
        child: Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 15),
                child: Icon(
                  Icons.radio_button_off,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                    inherit: false,
                    color: Colors.black54,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
