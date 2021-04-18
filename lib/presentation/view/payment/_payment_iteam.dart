import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/payment_model.dart';

class PaymentIteam extends StatelessWidget {
  final PaymentModel? paymentModel;
  const PaymentIteam({
    Key? key,
    this.paymentModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        elevation: 2,
        child: Container(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: paymentModel!.color),
                child: Icon(
                  paymentModel!.icon,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              title: Text(
                paymentModel!.title!,
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black54),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
