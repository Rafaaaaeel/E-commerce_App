import 'package:flutter_modular/flutter_modular.dart';

import '../core/settings/settings.dart';
import '../modules/search/search_module.dart';

class AppModule extends Module {
  final Settings _settings;

  AppModule(this._settings);

  @override
  List<Bind> get binds => [
        Bind.singleton((i) => _settings),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SearchModule()),
      ];
}
