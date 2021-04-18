import 'package:flutter_aba_clone_learning/presentation/controller/quick_transfer_controller.dart';
import 'package:get/get.dart';

class QuickTransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<QuickTransferController>(
      QuickTransferController(),
    );
  }
}
