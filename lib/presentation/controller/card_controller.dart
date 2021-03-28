import 'package:flutter_aba_clone_learning/data/data_source/card_data_test.dart';

import 'package:get/get.dart';

class CardController extends GetxController {
  var listCardIteams = [].obs;

  @override
  void onInit() {
    loadCard();

    super.onInit();
  }

  loadCard() async {
    listCardIteams.clear();
    var list = await CardDataTest.demoCard();
    listCardIteams.assignAll(list);
  }
}
