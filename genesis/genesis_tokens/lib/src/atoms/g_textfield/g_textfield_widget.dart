import 'g_textfield_component.dart';
import 'g_textfield_style.dart';

class GTextfieldWidget extends GTextfieldComponent {
  GTextfieldWidget.standard({
    super.key,
    required super.controller,
    GTextfieldStyle? styles,
    super.hintText,
  }) : super(styles: GTextfieldStyle.standard());
}
