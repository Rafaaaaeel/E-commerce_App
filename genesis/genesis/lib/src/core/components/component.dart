import 'package:flutter/src/widgets/framework.dart';
import '../helpers/behaviour_helper.dart';
import '../interfaces/base_component.dart';
import '../interfaces/behaviour.dart';
import '../interfaces/style.dart';

mixin Component<T, U> implements BaseComponent<T, U> {
  @override
  Widget whenRegular(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw ("$this does not implements Behaviour.regular");
  }

  @override
  Widget whenLoading(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw ("$this does not implements Behaviour.loading");
  }

  @override
  Widget whenError(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw ("$this does not implements Behaviour.error");
  }

  @override
  Widget whenDisabled(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw ("$this does not implements Behaviour.disabled");
  }

  @override
  Widget whenEmpty(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw ("$this does not implements Behaviour.empty");
  }

  @override
  Widget whenProcessing(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw ("$this does not implements Behaviour.processing");
  }

  @override
  Widget render(Behaviour behaviour, BuildContext context, Style styles) {
    final actualBehaviour = BehaviourHelper.childBehaviour(behaviour, delegate);

    switch (actualBehaviour) {
      case Behaviour.regular:
        return whenRegular(
            styles.regular as T, styles.shared!, context, actualBehaviour);
      case Behaviour.loading:
        return whenLoading(
            styles.loading as T, styles.shared!, context, actualBehaviour);
      case Behaviour.error:
        return whenLoading(
            styles.error as T, styles.shared!, context, actualBehaviour);
      case Behaviour.empty:
        return whenEmpty(
            styles.error as T, styles.shared!, context, actualBehaviour);
      case Behaviour.disabled:
        return whenDisabled(
            styles.disabled as T, styles.shared!, context, actualBehaviour);
      case Behaviour.processing:
        return whenProcessing(
            styles.error as T, styles.shared!, context, actualBehaviour);
    }
  }
}
