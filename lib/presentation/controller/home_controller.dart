import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldState;

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
