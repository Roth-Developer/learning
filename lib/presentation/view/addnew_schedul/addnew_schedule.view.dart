import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/reuseble_textfield.dart';
import 'package:get/get.dart';
import 'schedule_option/schedule_option_dialog.dart';
import 'select_account/select_account_dialog.dart';
import 'select_template/select_template_dialog.dart';

class AddNewScheduleView extends StatelessWidget {
  final AddNewScheduleController addNewScheduleController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ABA\' Scheduled Payment',
        listIcon: [],
        leftIconOnPress: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            _textFields(context),
            _bottomSetScheduleButton()
          ],
        ),
      ),
    );
  }

  GestureDetector _bottomSetScheduleButton() {
    return GestureDetector(
      onTap: () {
        addNewScheduleController.setSchedule();
        Get.back();
      },
      child: Container(
        height: 90,
        width: double.infinity,
        color: Colors.red[600],
        child: Center(
            child: Text(
          'SET SCHEDULE',
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }

  Column _textFields(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 13,
        ),
        ReusebleTextField(
          addNewScheduleController: addNewScheduleController,
          icon: Icons.account_balance_wallet_sharp,
          title: 'Select your account',
          onpress: () {
            selectAccountDialog(context);
          },
          rightIcon: Icons.arrow_drop_down,
          tc: addNewScheduleController.tecSelectAccount,
        ),
        ReusebleTextField(
          onpress: () {
            selectTemplateDialog(context);
          },
          addNewScheduleController: addNewScheduleController,
          icon: Icons.people_alt_outlined,
          title: 'Select template',
          tc: addNewScheduleController.tecSelectTemplate,
        ),
        ReusebleTextField(
          tc: addNewScheduleController.tecAmount,
          addNewScheduleController: addNewScheduleController,
          icon: Icons.monetization_on_outlined,
          readonly: false,
          textInputType: TextInputType.number,
        ),
        ReusebleTextField(
          addNewScheduleController: addNewScheduleController,
          icon: Icons.date_range,
          title: 'Schedule option',
          rightIcon: Icons.arrow_drop_down,
          onpress: () {
            scheduleDialog(context);
          },
          tc: addNewScheduleController.tecSelectSchedule,
        ),
        ReusebleTextField(
          tc: addNewScheduleController.tecDate,
          onpress: () {
            addNewScheduleController.selectDate(context);
          },
          title: 'Date',
          icon: Icons.calendar_today_rounded,
          rightIcon: Icons.arrow_drop_down,
          addNewScheduleController: addNewScheduleController,
        ),
        ReusebleTextField(
          tc: addNewScheduleController.tecTime,
          textInputType: TextInputType.datetime,
          onpress: () {
            addNewScheduleController.selectTime(context);
          },
          title: 'Time',
          icon: Icons.access_time_outlined,
          rightIcon: Icons.arrow_drop_down,
          horizontal: 20,
          addNewScheduleController: addNewScheduleController,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Container _header() {
    return Container(
      color: Colore.appBarColor,
      height: 185,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration:
                BoxDecoration(color: Color(0xff5D96AD), shape: BoxShape.circle),
            child: Icon(
              Icons.date_range,
              color: Colors.white,
              size: 50,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'New Schedule',
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                wordSpacing: 1,
                letterSpacing: 0.8),
          )
        ],
      ),
    );
  }
}
