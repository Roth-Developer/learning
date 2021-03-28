import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/card_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/card/card_iteam.dart';

import 'package:get/get.dart';

class ScollCard extends StatelessWidget {
  const ScollCard({
    Key key,
    @required this.cardController,
  }) : super(key: key);

  final CardController cardController;

  @override
  Widget build(BuildContext context) {
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
