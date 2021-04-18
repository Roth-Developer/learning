import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';

import 'package:flutter_aba_clone_learning/presentation/controller/new_account_controller.dart';
import 'package:flutter_aba_clone_learning/presentation/view/new_account/_new_account_iteam.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:get/get.dart';

class NewAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NewAccountController newAccountController = Get.find();

    return Scaffold(
      appBar: CustomAppBar(
        title: 'ABA\' Account Opening',
        leftIcon: Icons.arrow_back_ios,
        leftIconOnPress: () {
          Get.back();
        },
        listIcon: [],
      ),
      body: Column(
        children: [_header(context), _listView(newAccountController)],
      ),
    );
  }

  Obx _listView(NewAccountController newAccountController) {
    return Obx(
      () => Expanded(
        child: ListView.builder(
          itemCount: newAccountController.listNewAccountIteams.length,
          itemBuilder: (BuildContext context, int index) {
            return NewAccountIteam(
              newAccountIteamModel:
                  newAccountController.listNewAccountIteams[index],
            );
          },
        ),
      ),
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
                backgroundColor: Color(0xff4D8EAA),
                child: Icon(
                  Icons.event_note_outlined,
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
                'New Account',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
