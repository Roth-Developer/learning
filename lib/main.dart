import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/route.dart';
import 'package:flutter_aba_clone_learning/di/account_binding.dart';
import 'package:flutter_aba_clone_learning/di/home_binding.dart';
import 'package:flutter_aba_clone_learning/presentation/view/account/account_page_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/home_page_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: RouteName.home,
    getPages: [
      GetPage(
        name: RouteName.home,
        page: () => HomePage(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: RouteName.account,
        page: () => AccountPage(),
        binding: AccountBinding(),
      ),
    ],
  ));
}