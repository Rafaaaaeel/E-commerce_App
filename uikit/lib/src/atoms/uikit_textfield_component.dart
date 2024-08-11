import 'package:flutter/material.dart';

import '../uikit.dart';
import 'uikit_textfield_style.dart';

class UikitTextfieldComponent extends StatefulWidget {
  final String? hintText;

  final TextEditingController controller;

  final UikitTextfieldStyle styles;

  const UikitTextfieldComponent(
      {super.key,
      required this.controller,
      required this.styles,
      this.hintText});

  @override
  State<UikitTextfieldComponent> createState() => _UikitTextfieldWidgetState();
}

class _UikitTextfieldWidgetState extends State<UikitTextfieldComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.styles.backgroundColor,
        borderRadius: widget.styles.borderRadius,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Uikit().sizes.m_16),
        child: TextField(
          controller: widget.controller,
          cursorColor: widget.styles.cursorColor,
          decoration: InputDecoration(
            border: widget.styles.border,
            hintText: widget.hintText,
          ),
        ),
      ),
    );
  }
}
