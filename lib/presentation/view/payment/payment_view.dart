import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/payment_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/payment/_payment_iteam.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/icon_iteam.dart';
import 'package:get/get.dart';

class PaymentView extends StatelessWidget {
  final PaymentController paymentController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7EFF2),
      appBar: CustomAppBar(
          title: 'ABA\' Payments',
          listIcon: [
            IconIteam(
              icon: Icons.search,
            )
          ],
          leftIconOnPress: () {
            Get.back();
          }),
      body: Column(
        children: [
          _header(),
          SizedBox(height: 5),
          _listView(),
        ],
      ),
    );
  }

  Obx _listView() {
    return Obx(
      () => Expanded(
        child: ListView.builder(
          itemCount: paymentController.listPaymentIteams.length,
          itemBuilder: (BuildContext context, int index) {
            return PaymentIteam(
              paymentModel: paymentController.listPaymentIteams[index],
            );
          },
        ),
      ),
    );
  }

  Container _header() {
    return Container(
      height: 150,
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
                  'Payments',
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
                  'Top up your phone, pay your bills or your \nchildren\'s school fee free of charge at any \ntime.',
                  style: TextStyle(color: Colors.white, fontSize: 13),
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
