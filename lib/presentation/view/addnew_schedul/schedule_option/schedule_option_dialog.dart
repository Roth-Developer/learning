import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';
import 'package:get/get.dart';
import '../../../widget/greyline.dart';
import '_schedule_option_iteam.dart';
import '_schedule_option_title.dart';

Future<Object?> scheduleDialog(BuildContext context) {
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
            child: Column(
              children: [
                ScheduleOptionTitle(
                  title: 'Schedule option',
                ),
                ScheduleOptionIteam(
                  onpress: () {
                    Get.back();
                    addNewScheduleController.tecSelectSchedule!.text =
                        'One time';
                  },
                  title: 'One time',
                ),
                greyLine(),
                ScheduleOptionIteam(
                  onpress: () {
                    Get.back();
                    addNewScheduleController.tecSelectSchedule!.text = 'Weekly';
                  },
                  title: 'Weekly',
                ),
                greyLine(),
                ScheduleOptionIteam(
                  onpress: () {
                    Get.back();
                    addNewScheduleController.tecSelectSchedule!.text =
                        'Monthly';
                  },
                  title: 'Monthly',
                ),
              ],
            ),
          ),
        );
      });
}
