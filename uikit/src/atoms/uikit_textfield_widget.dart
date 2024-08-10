import 'package:flutter/material.dart';

import 'uikit_textfield_component.dart';
import 'uikit_textfield_style.dart';

class UikitTextfieldWidget extends UikitTextfieldComponent {
  UikitTextfieldWidget.standard({
    super.key,
    required super.controller,
    UikitTextfieldStyle? styles,
    super.hintText,
  }) : super(styles: UikitTextfieldStyle.standard());
}
