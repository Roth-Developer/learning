import 'package:flutter/material.dart';

class ReusebleListtile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onPress;

  const ReusebleListtile({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        onTap: onPress,
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
