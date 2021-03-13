import 'package:flutter_aba_clone_learning/presentation/controller/contact_us_controller.dart';

import 'package:get/get.dart';

class ContactUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ContactUsController>(
      ContactUsController(),
    );
  }
}
