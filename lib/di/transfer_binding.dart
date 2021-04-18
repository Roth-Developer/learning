import 'package:flutter_aba_clone_learning/presentation/controller/transfer_controller.dart';

import 'package:get/get.dart';

class TransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<TransferController>(
      TransferController(),
    );
  }
}
