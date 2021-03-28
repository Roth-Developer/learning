import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';

import 'package:get/get.dart';

class AddNewScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AddNewScheduleController>(
      AddNewScheduleController(),
    );
  }
}
