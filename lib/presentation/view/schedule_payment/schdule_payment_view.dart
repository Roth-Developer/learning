import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/route.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/schedule_controller.dart';

import 'package:flutter_aba_clone_learning/presentation/view/schedule_payment/gradient_bar.dart';
import 'package:flutter_aba_clone_learning/presentation/view/schedule_payment/schedule_payment_listviewbuilder.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:get/get.dart';

class SchedulePaymentView extends StatelessWidget {
  final ScheduleController scheduleController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4EEF0),
      appBar: CustomAppBar(
        title: 'ABA\' Scheduled Payment',
        listIcon: [],
        leftIconOnPress: () {
          Get.back();
        },
      ),
      body: Column(
        children: [
          GradientBar(),
          SizedBox(
            height: 5,
          ),
          SchedulePaymentListViewBuilder(
              scheduleController: scheduleController),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[400],
        onPressed: () {
          Get.toNamed(RouteName.addnewschedule);
        },
        child: Icon(
          (Icons.add),
        ),
      ),
    );
  }
}
