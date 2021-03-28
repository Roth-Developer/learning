import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/payment_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/payment/payment_iteam.dart';

import 'package:get/get.dart';

class ListViewbuildPayment extends StatelessWidget {
  const ListViewbuildPayment({
    Key key,
    @required this.paymentController,
  }) : super(key: key);

  final PaymentController paymentController;

  @override
  Widget build(BuildContext context) {
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
}
