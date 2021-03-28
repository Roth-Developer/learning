import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/payment_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/payment/body/list_view_build_payment.dart';

import 'package:flutter_aba_clone_learning/presentation/view/payment/body/payment_red_bar.dart';
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
          PaymentRedBar(),
          SizedBox(
            height: 5,
          ),
          ListViewbuildPayment(paymentController: paymentController),
        ],
      ),
    );
  }
}
