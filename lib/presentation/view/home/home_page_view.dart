import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/route.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/home_controller.dart';

import 'package:flutter_aba_clone_learning/presentation/view/home/body/home_page_body.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/home_page_drawer.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/custom_appbar.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/app_bar/icon_iteam.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeController.scaffoldState,
      appBar: CustomAppBar(
        title: 'ABA\' Mobile',
        leftIcon: Icons.menu,
        leftIconOnPress: () {
          homeController.scaffoldState.currentState.openDrawer();
        },
        listIcon: [
          IconIteam(
            icon: Icons.notifications_none,
            onpress: () {
              Get.toNamed(RouteName.notification);
            },
          ),
          IconIteam(
            icon: Icons.phone_in_talk_outlined,
            onpress: () {
              Get.toNamed(RouteName.contactus);
            },
          )
        ],
      ),
      drawer: homePageDrawer(),
      body: homePageBody(),
    );
  }
}
