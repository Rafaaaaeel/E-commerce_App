import 'package:flutter/material.dart';

import '../uikit.dart';

class UikitTextfieldStyle {
  final BorderRadius borderRadius;

  final InputBorder border;

  final Color? iconColor;

  final Color? cursorColor;

  final Color? backgroundColor;

  UikitTextfieldStyle({
    required this.borderRadius,
    required this.border,
    this.cursorColor,
    this.iconColor,
    this.backgroundColor,
  });

  static UikitTextfieldStyle standard() {
    return UikitTextfieldStyle(
      borderRadius: Uikit().radius.r_8,
      border: InputBorder.none,
      cursorColor: Colors.black,
      backgroundColor: Colors.grey[200],
    );
  }
}
