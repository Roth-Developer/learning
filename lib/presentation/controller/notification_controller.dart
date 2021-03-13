import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/data_source/transaction_data_test.dart';

import 'package:get/get.dart';

class NotificationController extends GetxController {
  TabController tabController;
  var listTransactionIteams = [].obs;

  @override
  void onInit() {
    loadTransactionNotification();
    super.onInit();
  }

  loadTransactionNotification() async {
    listTransactionIteams.clear();
    var list = await DataTest.demoTransactionIteam;
    listTransactionIteams.assignAll(list);
  }
}
