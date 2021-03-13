import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/transaction_iteam_model.dart';

class DataTest {
  static List<TransactionIteamModel> demoTransactionIteam = [
    TransactionIteamModel(
      image: 'assets/image/cellcard2.jpg',
      title: 'Cellcard',
      dateTime: 'Mar 04, 2021 / 10:56:21',
      description: '1.00 USD is paid for 078 304 581 from account 001362546',
      color: Colors.orange,
    ),
    TransactionIteamModel(
      image: 'assets/image/market2.webp',
      title: 'DMARKET.COM',
      dateTime: 'Mar 01, 2021 / 14:10:17',
      description: '17.00 USD is blocked on account 001362546',
      color: Colors.red,
    ),
    TransactionIteamModel(
      image: 'assets/image/cellcard2.jpg',
      title: 'Cellcard',
      dateTime: 'Mar 04, 2021 / 10:54:22',
      description: '1.00 USD is paid for 078 304 581 from account 001362546',
      color: Colors.orange,
    ),
    TransactionIteamModel(
      image: 'assets/image/transfer2.png',
      title: 'Received from SOK LYHOUR',
      dateTime: 'Feb 24, 2021 / 14:12:34',
      description: '30.00 USD is received to account 001362546',
      color: Color(0xff59B72D),
    ),
    TransactionIteamModel(
      image: 'assets/image/market2.webp',
      title: 'DMARKET.COM',
      dateTime: 'Mar 01, 2021 / 14:10:17',
      description: '14.50 USD is blocked on account 001362546',
      color: Colors.red,
    ),
  ];
}
