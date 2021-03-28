 import 'package:flutter/material.dart';

Padding greyLine() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 0.5,
        width: double.infinity,
        color: Colors.grey,
      ),
    );
  }