import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/card_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/card/_card_iteam.dart';
import 'package:flutter_aba_clone_learning/presentation/view/card/_custom_listtile.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:get/get.dart';

class CardView extends StatelessWidget {
  final CardController cardController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ABA\' Cards',
        listIcon: [],
        leftIconOnPress: () {
          Get.back();
        },
      ),
      body: Column(
        children: [
          _scrollCard(),
          _cardSetting(),
        ],
      ),
    );
  }

  Column _cardSetting() {
    return Column(
      children: [
        Padding(
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
        ),
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

  Obx _scrollCard() {
    return Obx(
      () => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              cardController.listCardIteams.length,
              (index) => CardIteam(
                cardModel: cardController.listCardIteams[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
