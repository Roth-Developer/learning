import 'package:flutter_aba_clone_learning/presentation/controller/account_controller.dart';

import 'package:get/get.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AccountController>(
      AccountController(),
    );
  }
}
