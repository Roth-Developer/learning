import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';

import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  const AppTheme();

  // static void getTheme(String themeCode) {
  //   if (themeCode == 'R') {
  //     Get.changeTheme(red());
  //   }
  //   if (themeCode == 'G') {
  //     Get.changeTheme(green());
  //   }
  //   if (themeCode == 'V') {
  //     Get.changeTheme(violet());
  //   }
  // }

  static ThemeData myTheme() {
    return ThemeData(
      primaryColor: Colore.appBarColor,
      scaffoldBackgroundColor: Color(0xffE7EFF2),
      fontFamily: GoogleFonts.roboto().fontFamily,
      textTheme: TextTheme(
        //Appbar
        headline6: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        bodyText1: GoogleFonts.roboto(
          fontSize: 13,
          color: Colors.grey[500],
          fontWeight: FontWeight.w500,
        ),

        bodyText2: GoogleFonts.roboto(
          fontSize: 13,
          color: Colors.white,
        ),
        headline1: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black54,
        ),
        headline2: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: Colors.red),
      gapPadding: 10,
    );
    return InputDecorationTheme(
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      // if we are define our floatingLabelBehavior in our theme then it's not applayed
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
    );
  }

  // TextTheme textTheme() {
  //   return TextTheme(
  //     bodyText1: TextStyle(color: Colors.red),
  //     bodyText2: TextStyle(color: Colors.red),
  //   );
  // }

  static AppBarTheme appBarTheme() {
    return AppBarTheme(
      color: Colors.grey,
      elevation: 2,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
