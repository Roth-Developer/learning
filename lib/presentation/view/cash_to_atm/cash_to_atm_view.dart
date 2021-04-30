import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/cash_to_atm_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/reuseble_textfield.dart';
import 'package:get/get.dart';

class CashToAtmView extends StatelessWidget {
  final CashToAtmController cashToAtmController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          title: 'ABA\' Transfers',
          listIcon: [],
          leftIconOnPress: () {
            Get.back();
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(context),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              children: [
                _selectCash(context),
                _selectAccount(),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 60,
            width: double.infinity,
            color: Color(0xffEE534F),
            child: Center(
                child: Text(
              'SEND',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            )),
          ),
        ],
      ),
    );
  }

  Container _selectAccount() {
    return Container(
      height: 50,
      child: TextField(
        onTap: () {},
        readOnly: true,
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.account_balance_wallet_rounded,
            color: Colors.black26,
            size: 23,
          ),
          alignLabelWithHint: false,
          labelText: 'Select your account',
          labelStyle: TextStyle(
              color: Colors.black26, fontSize: 14, fontWeight: FontWeight.w600),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
          ),
        ),
      ),
    );
  }

  Column _selectCash(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select cash withdrawal option',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: GetBuilder<CashToAtmController>(
            builder: (_) => Row(
              children: [
                SelectCashOption(
                  title: 'Scan QR',
                  icon: Icons.qr_code_scanner_outlined,
                  onpress: () {
                    _.getScanQRSelected();
                  },
                  borderColor:
                      _.selected == 'Scan QR' ? Colors.cyan : Colors.black12,
                  titleColor:
                      _.selected == 'Scan QR' ? Colors.cyan : Colors.black26,
                  iconColor:
                      _.selected == 'Scan QR' ? Colors.cyan : Colors.black26,
                ),
                SizedBox(width: 20),
                SelectCashOption(
                  title: 'Cash to ATM',
                  icon: Icons.atm,
                  onpress: () {
                    _.getCashToAtmSelected();
                  },
                  borderColor: _.selected == 'Cash to ATM'
                      ? Colors.cyan
                      : Colors.black12,
                  titleColor: _.selected == 'Cash to ATM'
                      ? Colors.cyan
                      : Colors.black26,
                  iconColor: _.selected == 'Cash to ATM'
                      ? Colors.cyan
                      : Colors.black26,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _header(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.28,
      color: Colore.appBarColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: CircleAvatar(
                backgroundColor: Color(0xff10B394),
                child: Icon(
                  Icons.closed_caption_outlined,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Cash to ATM',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectCashOption extends StatelessWidget {
  final IconData icon;
  final VoidCallback onpress;
  final String title;
  final Color borderColor;
  final Color iconColor;
  final Color titleColor;
  const SelectCashOption({
    Key? key,
    required this.icon,
    required this.onpress,
    required this.title,
    required this.borderColor,
    required this.iconColor,
    required this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: 2),
              borderRadius: BorderRadius.circular(4)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: iconColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: TextStyle(color: titleColor, fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
