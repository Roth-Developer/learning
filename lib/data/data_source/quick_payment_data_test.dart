import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/quick_payment_model.dart';
import 'package:flutter_aba_clone_learning/data/model/quick_transfer_iteam_model.dart';

import 'package:flutter_aba_clone_learning/data/model/transfer_model.dart';

class QuickPaymentDataTest {
  static Future<List<QuickPaymentModel>> demoQuickPayment() async {
    var list = await [
      QuickPaymentModel(
          image: 'assets/image/cellcard2.jpg',
          name: 'Hooce',
          phoneNumber: '012 561 200'),
      QuickPaymentModel(
          image: 'assets/image/cellcard2.jpg',
          name: 'Dara',
          phoneNumber: '012 444 200'),
      QuickPaymentModel(
          image: 'assets/image/cellcard2.jpg',
          name: 'chiroo',
          phoneNumber: '012 321 210'),
    ];
    return list;
  }
}
