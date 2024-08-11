import 'package:core/core.dart';
import 'package:search/search.dart';

import 'package:flutter_modular/flutter_modular.dart';


class AppModule extends Module {
  final Settings _settings;

  AppModule(this._settings);

  @override
  List<Bind> get binds => [
        Bind.singleton((i) => _settings),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/search', module: SearchModule()),
      ];
}
