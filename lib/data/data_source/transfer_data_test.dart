import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/data/model/transfer_model.dart';

class TransferDataTest {
  static Future<List<TransferModel>> demoTransfer() async {
    var list = await [
      TransferModel(
          color: Colors.redAccent,
          icon: Icons.monetization_on,
          title: 'Choose From Template'),
      TransferModel(
          color: Colors.blueAccent,
          icon: Icons.phone_in_talk_outlined,
          title: 'Transfer to own ABA account'),
      TransferModel(
        color: Colors.greenAccent,
        icon: Icons.wifi,
        title: 'Transfer to other ABA account',
      ),
      TransferModel(
          color: Colors.blue[900],
          icon: Icons.format_underlined_outlined,
          title: 'Send money to ABA ATM\'s'),
      TransferModel(
          color: Colors.cyan,
          icon: Icons.clean_hands_rounded,
          title: 'Transfer to Local Banks & Wallets'),
      TransferModel(
          color: Colors.green,
          icon: Icons.cast_for_education,
          title: 'International Transfers'),
    ];
    return list;
  }
}
