import 'package:flutter/material.dart';
import 'package:genesis_tokens/tokens.dart';

class GTextfieldStyle {
  final BorderRadius borderRadius;

  final InputBorder border;

  final Color? iconColor;

  final Color? cursorColor;

  final Color? backgroundColor;

  GTextfieldStyle({
    required this.borderRadius,
    required this.border,
    this.cursorColor,
    this.iconColor,
    this.backgroundColor,
  });

  static GTextfieldStyle standard() {
    return GTextfieldStyle(
      borderRadius: GTheme().radius.r_8,
      border: InputBorder.none,
      cursorColor: Colors.black,
      backgroundColor: Colors.grey[200],
    );
  }
}
