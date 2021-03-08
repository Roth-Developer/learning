import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:get/get.dart';

PreferredSize customAppbar(
    {GlobalKey<ScaffoldState> globalKey,
    @required String title,
    IconData icon1,
    IconData icon2}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: SafeArea(
      child: Container(
        height: 80,
        color: Colore.appBarColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white, size: 25),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [Icon(icon1), Icon(icon2)],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
