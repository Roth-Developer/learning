import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/data_source/card_data_test.dart';
import 'package:flutter_aba_clone_learning/data/model/schedule_payment_iteam_model.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/schedule_controller.dart';
import 'package:intl/intl.dart';
import 'package:flutter_aba_clone_learning/data/data_source/template_data_test.dart';

import 'package:get/get.dart';

class AddNewScheduleController extends GetxController {
  ScheduleController scheduleController = Get.find();
  var listCardIteams = [].obs;
  var listTemplateIteams = [].obs;

  TextEditingController? tecSelectAccount;
  TextEditingController? tecSelectTemplate;
  TextEditingController? tecAmount;
  TextEditingController? tecSelectSchedule;
  TextEditingController? tecDate;
  TextEditingController? tecTime;

  @override
  void onInit() {
    tecSelectAccount = TextEditingController();
    tecSelectTemplate = TextEditingController();
    tecAmount = TextEditingController();
    tecSelectSchedule = TextEditingController();
    tecDate = TextEditingController();
    tecTime = TextEditingController();

    loadCard();
    loadTemplate();

    super.onInit();
  }

  @override
  void onClose() {
    tecSelectAccount!.dispose();
    tecSelectTemplate!.dispose();
    tecAmount!.dispose();
    tecSelectSchedule!.dispose();
    tecDate!.dispose();
    tecTime!.dispose();

    super.onClose();
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

  selectAccount(String text) {
    tecSelectAccount!.text = text;
  }

  selectTemplate(String text) {
    tecSelectTemplate!.text = text;
  }

  DateTime selectedDate = DateTime.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null) {
      selectedDate = picked;

      tecDate!.text = DateFormat.yMMMd().format(picked);
    }
  }

  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null) {
      selectedTime = picked;
      tecTime!.text = picked.format(context);
    }
  }

  setSchedule() {
    scheduleController.listSchedulePaymentIteams.add(
      SchedulePaymentModel(
          image: 'assets/image/transfer2.png',
          phoneNumber: '090 999 323',
          day: '16',
          month: 'JAN',
          money: '30.00',
          backgroundColor: Color(0xff59B72D),
          name: 'Doung sereyrath'),
    );
  }
}
