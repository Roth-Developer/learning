import 'package:flutter_aba_clone_learning/presentation/controller/new_account_controller.dart';

import 'package:get/get.dart';

class NewAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NewAccountController>(
      NewAccountController(),
    );
  }
}
