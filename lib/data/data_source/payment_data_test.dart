import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/payment_model.dart';

class PaymentDataTest {
  static Future<List<PaymentModel>> demoPayment() async {
    var list = await [
      PaymentModel(
          color: Colors.redAccent,
          icon: Icons.monetization_on,
          title: 'Choose From Template'),
      PaymentModel(
          color: Colors.blueAccent,
          icon: Icons.phone_in_talk_outlined,
          title: 'Mobile Top-up'),
      PaymentModel(
          color: Colors.greenAccent, icon: Icons.wifi, title: 'Internet & TV'),
      PaymentModel(
          color: Colors.blue[900],
          icon: Icons.format_underlined_outlined,
          title: 'Ultilities'),
      PaymentModel(
          color: Colors.cyan,
          icon: Icons.clean_hands_rounded,
          title: 'Financial Services'),
      PaymentModel(
          color: Colors.green,
          icon: Icons.cast_for_education,
          title: 'Education'),
      PaymentModel(
        color: Colors.blue,
        icon: Icons.gamepad,
        title: 'Entertainment',
      ),
      PaymentModel(
          color: Colors.blueAccent,
          icon: Icons.phone_in_talk_outlined,
          title: 'Mobile Top-up'),
    ];
    return list;
  }
}
