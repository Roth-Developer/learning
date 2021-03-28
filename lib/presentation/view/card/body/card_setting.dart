import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/view/card/custom_listtile.dart';

class CardSetting extends StatelessWidget {
  const CardSetting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xffEAF2F4),
          height: 45,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            child: Text(
              'Card Settings',
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        CustomListtile(
          title: 'Rename Card',
          icon: Icons.drive_file_rename_outline,
        ),
        CustomListtile(
          title: 'Change linked account',
          icon: Icons.account_balance_wallet_rounded,
        ),
        CustomListtile(
            title: 'Change transactions limit', icon: Icons.av_timer_sharp),
        CustomListtile(
          title: 'Reset card PIN',
          icon: Icons.refresh_rounded,
        ),
      ],
    );
  }
}
