import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/route.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/body/funtion_list_card.dart';
import 'package:get/get.dart';

import 'quick_transfer_bar.dart';

Column homePageBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          children: [
            FuntionListCard(
              icon: Icons.account_balance_wallet_rounded,
              text: 'Accounts',
              onpress: () {
                Get.toNamed(RouteName.account);
              },
            ),
            SizedBox(
              width: 1,
            ),
            FuntionListCard(
              icon: Icons.credit_card_rounded,
              text: 'Cards',
              onpress: () {},
            ),
            SizedBox(
              width: 1,
            ),
            FuntionListCard(
              icon: Icons.monetization_on_rounded,
              text: 'Payments',
              onpress: () {},
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
            FuntionListCard(
              icon: Icons.note_add_rounded,
              text: 'New Account',
              onpress: () {},
            ),
            SizedBox(
              width: 1,
            ),
            FuntionListCard(
              icon: Icons.atm_rounded,
              text: 'Cash to ATM',
              onpress: () {},
            ),
            SizedBox(
              width: 1,
            ),
            FuntionListCard(
              icon: Icons.transfer_within_a_station_rounded,
              text: 'Transfers',
              onpress: () {},
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
            FuntionListCard(
              icon: Icons.qr_code_scanner_rounded,
              text: 'Scan QR',
              onpress: () {},
            ),
            SizedBox(
              width: 1,
            ),
            FuntionListCard(
              icon: Icons.local_atm_rounded,
              text: 'Loans',
              onpress: () {},
            ),
            SizedBox(
              width: 1,
            ),
            FuntionListCard(
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
        icon: Icons.compare_arrows_rounded,
        onpress: () {},
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
