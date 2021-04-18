import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';

import 'package:get/get.dart';

import '../schedule_option/_schedule_option_title.dart';
import '_select_account_iteam.dart';

Future<Object?> selectAccountDialog(BuildContext context) {
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
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListView.builder(
                  itemCount: addNewScheduleController.listCardIteams.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SelectAccountIteam(
                      cardModel: addNewScheduleController.listCardIteams[index],
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: ScheduleOptionTitle(
                  title: 'Select your account',
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
