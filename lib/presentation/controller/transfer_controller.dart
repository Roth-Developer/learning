import 'package:flutter_aba_clone_learning/data/data_source/transfer_data_test.dart';
import 'package:get/get.dart';

class TransferController extends GetxController {
  var listTransferIteams = [].obs;

  @override
  void onInit() {
    loadTransfer();

    super.onInit();
  }

  loadTransfer() async {
    listTransferIteams.clear();
    var list = await TransferDataTest.demoTransfer();
    listTransferIteams.assignAll(list);
  }
}
