import 'package:flutter_aba_clone_learning/presentation/controller/payment_controller.dart';

import 'package:get/get.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PaymentController>(
      PaymentController(),
    );
  }
}
