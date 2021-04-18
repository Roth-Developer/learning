import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/new_account_iteam_model.dart';

class NewAccountDataTest {
  static Future<List<NewAccountIteamModel>> demoNewAccountIteam() async {
    var list = await [
      NewAccountIteamModel(
          backgroundColor: Colors.brown[200],
          title: 'Premium Account Number',
          description:
              'Create a new ABAaccount with your favorite number that easy to remember. it can contain a date of birth, vehicle plate or any other special number that important for you. ',
          greenText: 'EXPLORE MORE',
          icon: Icons.star),
      NewAccountIteamModel(
          backgroundColor: Colors.red,
          title: 'Mobile Fixed Deposit',
          description:
              'Choose the term deposit and get high return on your saving with our attractive interest rates in both USD and KHR currencies. ',
          greenText: 'MAKE NEW DEPOSIT',
          icon: Icons.menu_book_sharp),
      NewAccountIteamModel(
          backgroundColor: Colors.cyan[200],
          title: 'Mobile Savings Account',
          description:
              'Our most popular bank account that helps you reach saving goals with competitive interest rate and other great features. ',
          greenText: 'EXPLORE MORE',
          icon: Icons.contact_support_outlined),
      NewAccountIteamModel(
          backgroundColor: Colors.brown[200],
          title: 'Premium Account Number',
          description:
              'Create a new ABAaccount with your favorite number that easy to remember. it can contain a date of birth, vehicle plate or any other special number that important for you. ',
          greenText: 'EXPLORE MORE',
          icon: Icons.star),
    ];
    return list;
  }
}
