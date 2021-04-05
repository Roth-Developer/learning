import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/data/model/card_model.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';

import 'package:get/get.dart';

import '../../../widget/greyline.dart';

class SelectAccountIteam extends StatelessWidget {
  final CardModel cardModel;
  final Function onPress;

  const SelectAccountIteam({
    Key key,
    this.cardModel,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddNewScheduleController addNewScheduleController = Get.find();
    return GestureDetector(
      onTap: () {
        Get.back();
        addNewScheduleController
            .selectAccount(cardModel.useType + cardModel.balance);
      },
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.7 / 4,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardModel.useType,
                      style: TextStyle(
                          inherit: false,
                          color: Colors.black54,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          cardModel.cardNumber,
                          style: TextStyle(
                              inherit: false,
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ' / ',
                          style: TextStyle(
                              inherit: false,
                              color: Colore.appBarColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          cardModel.balance,
                          style: TextStyle(
                              inherit: false,
                              color: Colore.appBarColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ' USD',
                          style: TextStyle(
                              inherit: false,
                              color: Colore.appBarColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          greyLine(),
        ],
      ),
    );
  }
}
