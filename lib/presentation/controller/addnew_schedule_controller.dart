import 'package:flutter/cupertino.dart';
import 'package:flutter_aba_clone_learning/data/data_source/card_data_test.dart';
import 'package:flutter_aba_clone_learning/data/data_source/schedule_payment_data_test.dart';
import 'package:flutter_aba_clone_learning/data/data_source/template_data_test.dart';
import 'package:get/get.dart';

class AddNewScheduleController extends GetxController {
  var listAddNewSchedulePaymentIteams = [].obs;
  String value = '';

  var selectAcoountController = TextEditingController();
  var selectTemplateController = TextEditingController();
  var amountController = TextEditingController();
  var scheduleOptionController = TextEditingController();

  var listCardIteams = [].obs;
  var listTemplateIteams = [].obs;

  @override
  void onInit() {
    loadCard();
    loadTemplate();

    super.onInit();
  }

  loadCard() async {
    listCardIteams.clear();
    var list = await CardDataTest.demoCard();
    listCardIteams.assignAll(list);
  }

  loadTemplate() async {
    listTemplateIteams.clear();
    var list = await TemplateDataTest.demoTemplate();
    listTemplateIteams.assignAll(list);
  }

  selecAccoun(String account) {
    selectAcoountController.text = account;
  }
}
