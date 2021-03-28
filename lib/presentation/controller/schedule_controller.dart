import 'package:flutter_aba_clone_learning/data/data_source/schedule_payment_data_test.dart';
import 'package:get/get.dart';

class ScheduleController extends GetxController {
  var listSchedulePaymentIteams = [].obs;
  @override
  void onInit() {
    loadSchedulePayment();

    super.onInit();
  }

  loadSchedulePayment() async {
    listSchedulePaymentIteams.clear();
    var list = await SchedulePaymentDataTest.demoSchedulePaymentIteam;
    listSchedulePaymentIteams.assignAll(list);
  }
}
