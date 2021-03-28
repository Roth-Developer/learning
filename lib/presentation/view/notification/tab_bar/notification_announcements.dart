import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/notification_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/notification/accouncement_iteam.dart';
import 'package:get/get.dart';

class NotificationAnnouncements extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CupertinoScrollbar(
        child: Expanded(
          child: ListView.builder(
            itemCount: notificationController.listAnouncementIteams.length,
            itemBuilder: (BuildContext context, int index) {
              return AnnouncementItem(
                notificationAnnouncementModel:
                    notificationController.listAnouncementIteams[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
