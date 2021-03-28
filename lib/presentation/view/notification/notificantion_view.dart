import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/notification_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/notification/body_notification.dart';

import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  final NotificationController notificationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ABA\' Notifications',
        leftIcon: Icons.arrow_back_ios,
        leftIconOnPress: () {
          Get.back();
        },
        listIcon: [],
      ),
      body: BodyNotification(),
    );
  }
}
