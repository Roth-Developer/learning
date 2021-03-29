import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/body/body_header.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/schedule_option_dialog.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/select_account_dialog.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/select_template_dialog.dart';

import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:get/get.dart';

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
            bodyHeader(),
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
              tc: addNewScheduleController.selectAcoountController,
            ),
            ReusebleTextField(
              onpress: () {
                selectTemplateDialog(context);
              },
              addNewScheduleController: addNewScheduleController,
              icon: Icons.people_alt_outlined,
              title: 'Select template',
              tc: addNewScheduleController.selectTemplateController,
            ),
            ReusebleTextField(
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
              tc: addNewScheduleController.scheduleOptionController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: ReusebleTextField(
                      icon: Icons.calendar_today_rounded,
                      rightIcon: Icons.arrow_drop_down,
                      horizontal: 0,
                      addNewScheduleController: addNewScheduleController,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: ReusebleTextField(
                      icon: Icons.access_time_outlined,
                      rightIcon: Icons.arrow_drop_down,
                      horizontal: 0,
                      addNewScheduleController: addNewScheduleController,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 110,
                width: double.infinity,
                color: Colors.red[600],
                child: Center(
                    child: Text(
                  'SET SCHEDULE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReusebleTextField extends StatelessWidget {
  final IconData icon;
  final String title;
  final IconData rightIcon;
  final TextEditingController tc;
  final Function onpress;
  final bool readonly;
  final TextInputType textInputType;
  final double vertical;
  final double horizontal;

  const ReusebleTextField({
    Key key,
    @required this.addNewScheduleController,
    this.icon,
    this.title,
    this.onpress,
    this.rightIcon,
    this.tc,
    this.readonly = true,
    this.textInputType,
    this.vertical = 12,
    this.horizontal = 20,
  }) : super(key: key);

  final AddNewScheduleController addNewScheduleController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: Container(
        height: 47,
        child: TextField(
          keyboardType: textInputType,
          onTap: onpress,
          controller: tc,
          readOnly: readonly,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.grey,
            ),
            suffixIcon: IconButton(
                icon: Icon(
                  rightIcon,
                  color: Colors.grey,
                ),
                onPressed: () {}),
            alignLabelWithHint: false,
            labelText: title,
            labelStyle: TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w600),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
