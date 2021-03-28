import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/card_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/card/body/card_setting.dart';
import 'package:flutter_aba_clone_learning/presentation/view/card/body/scoll_card.dart';
import 'package:flutter_aba_clone_learning/presentation/view/card/body/transfer_tovisa_text.dart';
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
          ScollCard(cardController: cardController),
          TransferToVisaText(),
          CardSetting(),
        ],
      ),
    );
  }
}
