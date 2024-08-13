import 'tokens/g_radius.dart';
import 'tokens/g_sizes.dart';

abstract class GenesisTheme {
  GenesisRadius get radius;
  Genesisizes get sizes;
}

class Genesis extends GenesisTheme {
  final _radius = GenesisRadius();
  final _sizes = Genesisizes();

  static final Genesis _instantece = Genesis._internal();

  factory Genesis() {
    return _instantece;
  }

  Genesis._internal();

  @override
  GenesisRadius get radius => _radius;

  @override
  Genesisizes get sizes => _sizes;
}
