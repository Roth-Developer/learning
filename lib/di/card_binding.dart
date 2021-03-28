import 'package:flutter_aba_clone_learning/presentation/controller/card_controller.dart';

import 'package:get/get.dart';

class CardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CardController>(
      CardController(),
    );
  }
}
