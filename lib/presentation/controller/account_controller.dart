import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  Map<String, double> dataMap = {
    "General use": 100750,
    "Business": 0.00,
    "Online Service": 10000,
  };

  @override
  onInit() {
    scaffoldState = GlobalKey<ScaffoldState>();
    super.onInit();
  }

  @override
  onClose() {
    super.onClose();
  }
}
