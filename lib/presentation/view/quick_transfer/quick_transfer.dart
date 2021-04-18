import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/quick_transfer_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/quick_transfer/_quick_transfer_iteam.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:get/get.dart';

class QuickTransferView extends StatelessWidget {
  final QuickTransferController quickTransferController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'ABA\' Quick Transfer',
          leftIconOnPress: () {
            Get.back();
          },
          listIcon: [],
        ),
        body: Column(
          children: [
            _header(context),
            _listView(),
          ],
        ),
      ),
    );
  }

  Obx _listView() {
    return Obx(
      () => Expanded(
        child: ListView.builder(
          itemCount: quickTransferController.listQuickTransferIteam.length,
          itemBuilder: (BuildContext context, int index) {
            return QuickTransferIteam(
              quickTransferModel:
                  quickTransferController.listQuickTransferIteam[index],
            );
          },
        ),
      ),
    );
  }

  Container _header(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: double.infinity,
      color: Color(0xff00BCD5),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quick Transfers',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      letterSpacing: 0.5),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Save here ABA accounts of your relatives,\nfriends or business partners, to whom you\ntransfer funds frequently.',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),
          Positioned(
            right: -50,
            bottom: -50,
            child: Icon(
              Icons.autorenew_rounded,
              color: Colors.white60,
              size: 200,
            ),
          )
        ],
      ),
    );
  }
}
