import 'package:flutter/material.dart';

class IconIteam extends StatelessWidget {
  final IconData? icon;
  final Function? onpress;

  const IconIteam({Key? key, this.icon, this.onpress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress as void Function()?,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Icon(
          icon,
          size: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
