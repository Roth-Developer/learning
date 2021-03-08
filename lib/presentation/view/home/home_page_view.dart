import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/app_bar/home_page_appbar.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/body/home_page_body.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/home_page_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homePageAppbar(),
      drawer: homePageDrawer(),
      body: homePageBody(),
    );
  }
}
