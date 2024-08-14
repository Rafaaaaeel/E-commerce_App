import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GLabelSharedStyles {}

class GLabelStyle {
  final TextStyle textStyle;

  final int? maxLines;

  final EdgeInsets padding;

  GLabelStyle({
    required TextStyle textStyle,
    this.maxLines,
    this.padding = EdgeInsets.zero,
  }) : textStyle = textStyle.copyWith(
            decorationColor: textStyle.decorationColor ?? textStyle.color);
}
