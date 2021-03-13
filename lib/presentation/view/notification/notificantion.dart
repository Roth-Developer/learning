import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/notification_controller.dart';

import 'package:flutter_aba_clone_learning/presentation/view/notification/tab_bar/notification_announcements.dart';
import 'package:flutter_aba_clone_learning/presentation/view/notification/tab_bar/notification_transaction.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  final NotificationController notificationController = Get.find();

  final List<Widget> containers = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'ABA\' Notifications',
          leftIcon: Icons.arrow_back_ios,
          leftIconOnPress: () {
            Get.back();
          },
          listIcon: [],
        ),
        body: Container(
          color: Colore.appBarColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TabBar(
                  controller: notificationController.tabController,
                  labelStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  unselectedLabelColor: Colors.white30,
                  labelColor: Colors.white,
                  indicatorColor: Colors.red,
                  indicatorWeight: 3,
                  tabs: [
                    Tab(
                      text: 'TRANSACTIONS',
                    ),
                    Tab(
                      text: 'ANNOUNCEMENTS',
                    ),
                  ],
                ),
                Container(
                  height: 800,
                  width: double.infinity,
                  color: Colors.red,
                  child: TabBarView(
                      controller: notificationController.tabController,
                      children: [
                        NotificationTransaction(),
                        NotificationAnnouncements()
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
