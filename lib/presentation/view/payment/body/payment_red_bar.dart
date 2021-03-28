import 'package:flutter/material.dart';

class PaymentRedBar extends StatelessWidget {
  const PaymentRedBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Color(0xffED5250),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payments',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      letterSpacing: 0.5),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Top up your phone, pay your bills or your \nchildren\'s school fee free of charge at any \ntime.',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),
          Positioned(
            right: -50,
            bottom: -50,
            child: Icon(
              Icons.monetization_on_outlined,
              color: Colors.white60,
              size: 200,
            ),
          )
        ],
      ),
    );
  }
}
