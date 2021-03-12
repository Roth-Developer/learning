import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/home_controller.dart';

import 'package:get/get.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final corentRoute = Get.currentRoute;
  final HomeController homeController = Get.find();

  final String title;
  final List<Widget> listIcon;
  @override
  final Size preferredSize;

  MyAppBar({@required this.title, this.listIcon})
      : preferredSize = Size.fromHeight(45);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 45,
        color: Colore.appBarColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        homeController.scaffoldState.currentState.openDrawer();
                        print(corentRoute);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: 21),
                  ),
                ],
              ),
              Row(
                children: listIcon.map((value) {
                  return value;
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
