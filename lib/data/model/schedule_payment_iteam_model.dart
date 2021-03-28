import 'package:flutter/material.dart';

class SchedulePaymentModel {
  final String day;
  final String month;
  final String image;
  final Color backgroundColor;
  final String phoneNumber;
  final String money;
  final String name;

  SchedulePaymentModel({
    this.name,
    this.day,
    this.month,
    this.image,
    this.backgroundColor,
    this.phoneNumber,
    this.money,
  });
}
