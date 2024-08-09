import 'package:flutter/material.dart';

import '../uikit.dart';

class UikitTextfieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const UikitTextfieldWidget({super.key, required this.controller});

  @override
  State<UikitTextfieldWidget> createState() => _UikitTextfieldWidgetState();
}

class _UikitTextfieldWidgetState extends State<UikitTextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: Uikit().radius.r_8,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Uikit().sizes.m_16),
        child: TextField(
          controller: widget.controller,
          cursorColor: Colors.black,
          decoration: const InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
