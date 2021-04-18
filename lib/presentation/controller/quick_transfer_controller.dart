import 'package:flutter_aba_clone_learning/data/data_source/quick_transfer_data_test.dart';
import 'package:get/get.dart';

class QuickTransferController extends GetxController {
  final listQuickTransferIteam = [].obs;
  @override
  void onInit() {
    loadQuickTransfer();
    super.onInit();
  }

  loadQuickTransfer() async {
    listQuickTransferIteam.clear();
    var list = await QuickTransferDataTest.demoQuickTransfer();
    listQuickTransferIteam.assignAll(list);
  }
}
