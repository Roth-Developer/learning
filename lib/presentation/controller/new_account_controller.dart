import 'package:flutter_aba_clone_learning/data/data_source/new_account_data_test.dart';
import 'package:get/get.dart';

class NewAccountController extends GetxController {
  var listNewAccountIteams = [].obs;
  
  @override
  void onInit() {
    loadNewAccount();

    super.onInit();
  }

  loadNewAccount() async {
    listNewAccountIteams.clear();
    var list = await NewAccountDataTest.demoNewAccountIteam();
    listNewAccountIteams.assignAll(list);
  }
}
