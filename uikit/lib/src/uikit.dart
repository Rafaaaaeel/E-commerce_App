import 'tokens/uikit_radius.dart';
import 'tokens/uikit_sizes.dart';

abstract class UikitTheme {
  UikitRadius get radius;
  UikitSizes get sizes;
}

class Uikit extends UikitTheme {
  final _radius = UikitRadius();
  final _sizes = UikitSizes();

  static final Uikit _instantece = Uikit._internal();

  factory Uikit() {
    return _instantece;
  }

  Uikit._internal();

  @override
  UikitRadius get radius => _radius;

  @override
  UikitSizes get sizes => _sizes;
}
