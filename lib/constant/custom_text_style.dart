import 'package:fashtask/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// how to reuse textstyle
// class name of object the curling braces
// call a function and return it

class AppTextStyle {
  static TextStyle heading({
    FontWeight fontWeight = FontWeight.bold,
    double size = 32,
    Color textColor = AppColor.blackgrey,
    FontStyle? fontStyle,
  }) {
    return TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: textColor,
      fontStyle: fontStyle,
    );
  }

  // second way to make a Tsxttyle reusable
  static TextStyle body = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColor.grey,
  );
}
