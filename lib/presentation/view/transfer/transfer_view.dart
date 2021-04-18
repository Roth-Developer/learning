import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/transfer_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/transfer/_transfer_iteam.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:get/get.dart';

class TransferView extends StatelessWidget {
  final TransferController transferController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'ABA\' Transfers',
          listIcon: [],
          leftIconOnPress: () {
            Get.back();
          }),
      body: Column(
        children: [
          _header(context),
          _listView(),
        ],
      ),
    );
  }

  Obx _listView() {
    return Obx(
      () => Expanded(
        child: ListView.builder(
          itemCount: transferController.listTransferIteams.length,
          itemBuilder: (BuildContext context, int index) {
            return TransferIteam(
              transferModel: transferController.listTransferIteams[index],
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
                  'Transfers',
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
                  'Transfer money to your friends, relatives or \npartners in couple of simple steps.',
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
