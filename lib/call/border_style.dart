import 'package:fashtask/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppBorder {
  static OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      10,
    ),
    borderSide: const BorderSide(color: AppColor.purple),
  );
}
