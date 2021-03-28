import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomListtile({
    Key key,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(icon),
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.black54),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 5),
          child: Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.black38,
          ),
        )
      ],
    );
  }
}
