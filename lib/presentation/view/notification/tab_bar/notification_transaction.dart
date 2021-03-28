import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/notification_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/notification/transaction_iteam.dart';
import 'package:get/get.dart';

class NotificationTransaction extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE7EFF2),
      child: Obx(
        () => Column(
          children: [
            SizedBox(
              height: 5,
            ),
            ...List.generate(
              notificationController.listTransactionIteams.length,
              (index) => TransactionIteamCard(
                transactionIteamModel:
                    notificationController.listTransactionIteams[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
