import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/account_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/account/_account_iteam.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';

class AccountView extends StatelessWidget {
  final AccountController accountController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ABA\' Accounts',
        leftIcon: Icons.arrow_back_ios,
        leftIconOnPress: () {
          Get.back();
        },
        listIcon: [],
      ),
      body: Column(
        children: [
          _headerBar(),
          AccountIteam(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.event_note_outlined,
          size: 33,
        ),
        backgroundColor: Color(0xffEE534F),
        onPressed: () {},
      ),
    );
  }

  Container _headerBar() {
    return Container(
      height: 175,
      width: double.infinity,
      color: Color(0xff00415D),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            _circleSummaryBar(),
            _totalMoney(),
          ],
        ),
      ),
    );
  }

  CircularPercentIndicator _circleSummaryBar() {
    return CircularPercentIndicator(
      radius: 130.0,
      lineWidth: 15.0,
      percent: 1,
      center: Text(
        "All Accounts Summary",
        style: TextStyle(fontSize: 15.0, color: Colors.white70),
        textAlign: TextAlign.center,
      ),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: Colors.yellow,
      progressColor: Color(0xff00BCD5),
    );
  }

  Column _totalMoney() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            'Total in USD',
            style: TextStyle(color: Colors.white54),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 1.0,
          width: 240,
          color: Colors.white30,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            '\$ 10.79',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
