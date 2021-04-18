import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/route.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/body/_card_iteam.dart';
import 'package:get/get.dart';

import '_quick_transfer_bar.dart';

Column body() {
  return Column(
    children: [
      Expanded(
        child: Row(
          children: [
            CardIteam(
              icon: Icons.account_balance_wallet_rounded,
              text: 'Accounts',
              onpress: () {
                Get.toNamed(RouteName.account);
              },
            ),
            SizedBox(
              width: 1,
            ),
            CardIteam(
              icon: Icons.credit_card_rounded,
              text: 'Cards',
              onpress: () {
                Get.toNamed(RouteName.card);
              },
            ),
            SizedBox(
              width: 1,
            ),
            CardIteam(
              icon: Icons.monetization_on_rounded,
              text: 'Payments',
              onpress: () {
                Get.toNamed(RouteName.payment);
              },
            ),
          ],
        ),
      ),
      SizedBox(
        height: 1,
      ),
      Expanded(
        child: Row(
          children: [
            CardIteam(
              icon: Icons.note_add_rounded,
              text: 'New Account',
              onpress: () {
                Get.toNamed(RouteName.newaccount);
              },
            ),
            SizedBox(
              width: 1,
            ),
            CardIteam(
              icon: Icons.atm_rounded,
              text: 'Cash to ATM',
              onpress: () {},
            ),
            SizedBox(
              width: 1,
            ),
            CardIteam(
              icon: Icons.transfer_within_a_station_rounded,
              text: 'Transfers',
              onpress: () {
                Get.toNamed(RouteName.transfer);
              },
            ),
          ],
        ),
      ),
      SizedBox(
        height: 1,
      ),
      Expanded(
        child: Row(
          children: [
            CardIteam(
              icon: Icons.qr_code_scanner_rounded,
              text: 'Scan QR',
              onpress: () {},
            ),
            SizedBox(
              width: 1,
            ),
            CardIteam(
              icon: Icons.local_atm_rounded,
              text: 'Loans',
              onpress: () {},
            ),
            SizedBox(
              width: 1,
            ),
            CardIteam(
              icon: Icons.location_on_rounded,
              text: 'Locator',
              onpress: () {},
            ),
          ],
        ),
      ),
      QuickTransferBar(
        color: Color(0xff0CBAD5),
        text1: 'Quick Transfer',
        text2: 'create your templates here to make transfer quicker',
        icon: Icons.autorenew_rounded,
        onpress: () {
          Get.toNamed(RouteName.quicktransfer);
        },
      ),
      QuickTransferBar(
        color: Color(0xffED5250),
        text1: 'Quick Payment',
        text2: 'paying your bills with templates is faster',
        icon: Icons.monetization_on_outlined,
        onpress: () {},
      ),
    ],
  );
}
