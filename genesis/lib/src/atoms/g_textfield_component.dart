import 'package:flutter/material.dart';
import 'package:genesis/src/genesis.dart';


import 'g_textfield_style.dart';

class GTextfieldComponent extends StatefulWidget {
  final String? hintText;

  final TextEditingController controller;

  final GTextfieldStyle styles;

  const GTextfieldComponent(
      {super.key,
      required this.controller,
      required this.styles,
      this.hintText});

  @override
  State<GTextfieldComponent> createState() => _UikitTextfieldWidgetState();
}

class _UikitTextfieldWidgetState extends State<GTextfieldComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.styles.backgroundColor,
        borderRadius: widget.styles.borderRadius,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Genesis().sizes.m_16),
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
