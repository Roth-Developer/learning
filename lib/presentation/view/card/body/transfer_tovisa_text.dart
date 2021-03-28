import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';

class TransferToVisaText extends StatelessWidget {
  const TransferToVisaText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 15),
            height: 35,
            width: 35,
            child: Image.asset('assets/image/VISA-logo.png'),
          ),
          Text(
            'Transfer to VISA Card',
            style: TextStyle(
                color: Colore.appBarColor,
                fontWeight: FontWeight.w600,
                fontSize: 15),
          )
        ],
      ),
    );
  }
}
