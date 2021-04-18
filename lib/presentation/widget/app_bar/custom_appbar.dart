import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/home_controller.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeController homeController = Get.find();
  final IconData leftIcon;
  final Function leftIconOnPress;

  final String title;
  final List<Widget> listIcon;
  @override
  final Size preferredSize;

  CustomAppBar(
      {required this.title,
      required this.listIcon,
      this.leftIcon = Icons.arrow_back_ios,
      required this.leftIconOnPress})
      : preferredSize = Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        color: Colore.appBarColor,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(
                        leftIcon,
                        color: Colors.white,
                      ),
                      onPressed: leftIconOnPress as void Function()?,
                    ),
                  ),
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
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
