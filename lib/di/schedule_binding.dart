import 'package:flutter_aba_clone_learning/presentation/controller/schedule_controller.dart';
import 'package:get/get.dart';

class ScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ScheduleController>(
      ScheduleController(),
    );
  }
}
