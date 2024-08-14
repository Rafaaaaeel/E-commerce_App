import 'package:flutter/material.dart';
import 'label_states.dart';
import 'label_style.dart';
import '../../core/components/component.dart';
import '../../core/interfaces/behaviour.dart';
import '../../core/interfaces/style.dart';

class GLabel extends StatelessWidget
    with Component<GLabelStyle, GLabelSharedStyles> {
  final Behaviour behaviour;

  final GLabelStates styles;

  final String? text;

  final TextAlign? textAlign;

  final int? maxLines;

  final String? labelSemantics;

  final String? hintSemantics;

  GLabel({
    required this.behaviour,
    required this.styles,
    this.text,
    this.textAlign,
    this.maxLines,
    this.labelSemantics,
    this.hintSemantics,
  });

  @override
  Widget build(BuildContext context) {
    final _styles = Style<GLabelStyle, GLabelSharedStyles>(
      shared: styles.shared,
      regular: styles.regular,
      disabled: styles.disabled,
      empty: styles.empty,
      error: styles.empty,
    );

    return render(behaviour, context, _styles);
  }

  @override
  Map<Behaviour, Behaviour>? get delegate =>
      {Behaviour.processing: Behaviour.regular};

  @override
  Widget whenLoading(GLabelStyle styles, GLabelSharedStyles otherStyles,
      BuildContext context, Behaviour childBehaviour) {
    return SizedBox(
      width: 200,
      height: 100,
      child: Container(
        decoration: BoxDecoration(color: Colors.grey),
      ),
    );
  }

  @override
  Widget whenRegular(GLabelStyle styles, GLabelSharedStyles otherStyles,
      BuildContext context, Behaviour childBehaviour) {
    return Semantics(
      label: labelSemantics,
      hint: hintSemantics,
      child: Text(
        text ?? '[$text] is empty',
        textAlign: textAlign,
        maxLines: maxLines,
      ),
    );
  }
}
