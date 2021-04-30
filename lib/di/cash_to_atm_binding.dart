import 'package:flutter_aba_clone_learning/presentation/controller/cash_to_atm_controller.dart';
import 'package:get/get.dart';

class CashToAtmBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CashToAtmController>(
      CashToAtmController(),
    );
  }
}
