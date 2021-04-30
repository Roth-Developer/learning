import 'package:flutter_aba_clone_learning/data/data_source/quick_payment_data_test.dart';
import 'package:get/get.dart';

class QuickPaymentController extends GetxController {
  final listQuickPaymentIteam = [].obs;
  @override
  void onInit() {
    loadQuickPayment();
    super.onInit();
  }

  loadQuickPayment() async {
    listQuickPaymentIteam.clear();
    var list = await QuickPaymentDataTest.demoQuickPayment();
    listQuickPaymentIteam.assignAll(list);
  }
}
