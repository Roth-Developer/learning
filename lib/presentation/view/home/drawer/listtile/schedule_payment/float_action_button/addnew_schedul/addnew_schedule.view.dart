import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/body/body_header.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/schedule_option_dialog.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/select_account_dialog.dart';

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
      body: Column(
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
            addNewScheduleController: addNewScheduleController,
            icon: Icons.people_alt_outlined,
            title: 'Select template',
          ),
          GestureDetector(
              onTap: () {
                print('123');
              },
              child: ReusebleTextField(
                  addNewScheduleController: addNewScheduleController)),
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
        ],
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
  const ReusebleTextField({
    Key key,
    @required this.addNewScheduleController,
    this.icon,
    this.title,
    this.onpress,
    this.rightIcon,
    this.tc,
  }) : super(key: key);

  final AddNewScheduleController addNewScheduleController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Container(
        height: 47,
        child: TextField(
          onTap: onpress,
          controller: tc,
          readOnly: true,
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
