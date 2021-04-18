import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/data_source/transaction_data_test.dart';
import 'package:flutter_aba_clone_learning/data/data_source/anouncement_data_test.dart';
import 'package:flutter_aba_clone_learning/data/model/announcement_iteam_model.dart';

import 'package:get/get.dart';

class NotificationController extends GetxController {
  TabController? tabController;
  var listTransactionIteams = [].obs;
  var listAnouncementIteams = [].obs;

  @override
  void onInit() {
    loadTransactionNotification();
    loadAccouncementNotification();
    super.onInit();
  }

  loadTransactionNotification() async {
    listTransactionIteams.clear();
    var list = await TransactionDataTest.demoTransactionIteam;
    listTransactionIteams.assignAll(list);
  }

  loadAccouncementNotification() async {
    listAnouncementIteams.clear();
    var list = await AnoucementDataTest.demoAnouncement();
    listAnouncementIteams.assignAll(list);
  }

  selectAnnouncement(NotificationAnnouncementModel model) {
    print(model.title! + model.dateTime!);
  }
}
