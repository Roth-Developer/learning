import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/account_controller.dart';

import 'package:get/get.dart';

import 'package:percent_indicator/percent_indicator.dart';

import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';

class AccountPage extends StatelessWidget {
  final AccountController accountController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7EFF2),
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
          accountSummaryBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 40),
            child: Row(
              children: [
                Container(
                  width: 10,
                  height: 95,
                  decoration: BoxDecoration(
                    color: Color(0xff00BCD5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),
                ),
                Container(
                  height: 95,
                  width: 385,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      boxShadow: [BoxShadow(blurRadius: 0.3)]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'General use',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '001 363 567 / Savings',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.more_horiz_rounded,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 8),
                            child: Row(
                              children: [
                                Text(
                                  '10,79',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'USD',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
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

  Container accountSummaryBar() {
    return Container(
      height: 175,
      width: double.infinity,
      color: Color(0xff00415D),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [circleSummaryBar(), totalMoney()],
        ),
      ),
    );
  }

  CircularPercentIndicator circleSummaryBar() {
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

  Column totalMoney() {
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
