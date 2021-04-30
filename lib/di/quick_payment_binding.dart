import 'package:flutter_aba_clone_learning/presentation/controller/quick_payment_controller.dart';
import 'package:get/get.dart';

class QuickPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<QuickPaymentController>(
      QuickPaymentController(),
    );
  }
}
