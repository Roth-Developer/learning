import 'package:flutter/cupertino.dart';

class TransactionIteamModel {
  final String image;
  final String title;
  final String dateTime;
  final String description;
  final Color color;

  TransactionIteamModel({
    this.color,
    this.image,
    this.title,
    this.dateTime,
    this.description,
  });
}
