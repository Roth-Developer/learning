import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/quick_transfer_iteam_model.dart';

import 'package:flutter_aba_clone_learning/data/model/transfer_model.dart';

class QuickTransferDataTest {
  static Future<List<QuickTransferModel>> demoQuickTransfer() async {
    var list = await [
      QuickTransferModel(
          color: Colors.brown[900],
          profileText: 'AN',
          name: 'ah Nata',
          account: '000 977 565'),
      QuickTransferModel(
          color: Colors.green[900],
          profileText: 'B',
          name: 'B.Stranger',
          account: '000 923 545'),
      QuickTransferModel(
          color: Colors.blue[900],
          profileText: 'H',
          name: 'Hanami',
          account: '001 923 544'),
      QuickTransferModel(
          color: Colors.red[900],
          profileText: 'K',
          name: 'Kon khmer',
          account: '020 377 545'),
      QuickTransferModel(
          color: Colors.purple[900],
          profileText: 'N',
          name: 'Nano',
          account: '100 477 665'),
      QuickTransferModel(
          color: Colors.yellow[900],
          profileText: 'N',
          name: 'Number',
          account: '023 322 211'),
    ];
    return list;
  }
}
