import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/quick_payment_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/quick_payment/_quick_payment_iteam.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:get/get.dart';

class QuickPaymentView extends StatelessWidget {
  final QuickPaymentController quickPaymentController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ABA\' Quick Payment',
        listIcon: [],
        leftIconOnPress: () {
          Get.back();
        },
      ),
      body: Column(
        children: [
          _header(context),
          _listView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffED5250),
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Obx _listView() {
    return Obx(
      () => Expanded(
        child: ListView.builder(
          itemCount: quickPaymentController.listQuickPaymentIteam.length,
          itemBuilder: (BuildContext context, int index) {
            return QuickPaymentIteam(
              quickPaymentModel:
                  quickPaymentController.listQuickPaymentIteam[index],
            );
          },
        ),
      ),
    );
  }

  Container _header(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: double.infinity,
      color: Color(0xffED5250),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quick Payment',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      letterSpacing: 0.5),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Save your favorite service providers to make\npayment process easy and fast.',
                  style: TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
          ),
          Positioned(
            right: -50,
            bottom: -50,
            child: Icon(
              Icons.monetization_on_outlined,
              color: Colors.white60,
              size: 200,
            ),
          )
        ],
      ),
    );
  }
}
