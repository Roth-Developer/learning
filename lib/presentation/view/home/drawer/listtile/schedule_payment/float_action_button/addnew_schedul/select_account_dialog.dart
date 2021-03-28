import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';

import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/schedule_option_title.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/select_account_iteam.dart';
import 'package:get/get.dart';

Future<Object> selectAccountDialog(BuildContext context) {
  final AddNewScheduleController addNewScheduleController = Get.find();
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black45,
    transitionDuration: const Duration(milliseconds: 200),
    pageBuilder: (BuildContext buildContext, Animation animation,
        Animation secondaryAnimation) {
      return Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 30,
          height: MediaQuery.of(context).size.height / 3.7,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ScheduleOptionTitle(
                  title: 'Select your account',
                ),
                Column(
                  children: [
                    ...List.generate(
                      addNewScheduleController.listCardIteams.length,
                      (index) => SelectAccountIteam(
                        cardModel:
                            addNewScheduleController.listCardIteams[index],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
