import 'package:genesis_tokens/tokens.dart';

abstract class GenesisDefaultTheme {
  GenesisRadius get radius;
  GenesisSizes get sizes;
}

class GTheme extends GenesisDefaultTheme {
  final _radius = GenesisRadius();
  final _sizes = GenesisSizes();

  static final GTheme _instantece = GTheme._internal();

  factory GTheme() {
    return _instantece;
  }

  GTheme._internal();

  @override
  GenesisRadius get radius => _radius;

  @override
  GenesisSizes get sizes => _sizes;
}
