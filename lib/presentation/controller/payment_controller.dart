import 'package:flutter_aba_clone_learning/data/data_source/payment_data_test.dart';

import 'package:get/get.dart';

class PaymentController extends GetxController {
  var listPaymentIteams = [].obs;

  @override
  void onInit() {
    loadPayment();

    super.onInit();
  }

  loadPayment() async {
    listPaymentIteams.clear();
    var list = await PaymentDataTest.demoPayment();
    listPaymentIteams.assignAll(list);
  }
}
