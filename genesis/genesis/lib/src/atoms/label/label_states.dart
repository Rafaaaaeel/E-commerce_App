import 'label_style.dart';

class GLabelStates {
  GLabelSharedStyles shared;
  GLabelStyle regular;
  GLabelStyle disabled;
  GLabelStyle error;
  GLabelStyle empty;

  GLabelStates({
    required this.shared,
    required this.regular,
    required this.disabled,
    required this.error,
    required this.empty,
  });
}
