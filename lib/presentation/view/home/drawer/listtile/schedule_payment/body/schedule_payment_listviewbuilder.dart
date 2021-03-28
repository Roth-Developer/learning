import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/schedule_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/schedule_payment_iteam.dart';

import 'package:get/get.dart';

class SchedulePaymentListViewBuilder extends StatelessWidget {
  const SchedulePaymentListViewBuilder({
    Key key,
    @required this.scheduleController,
  }) : super(key: key);

  final ScheduleController scheduleController;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Expanded(
          child: ListView.builder(
            itemCount: scheduleController.listSchedulePaymentIteams.length,
            itemBuilder: (BuildContext context, int index) {
              return SchedulePaymentIteam(
                schedulePaymentModel:
                    scheduleController.listSchedulePaymentIteams[index],
              );
            },
          ),
        ));
  }
}
