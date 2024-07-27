import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../core/settings/settings.dart';
import 'app_module.dart';
import 'app_widget.dart';

Settings get _settings {
  final env = Enviroment.fromString(const String.fromEnvironment('env'));
  switch (env) {
    case Enviroment.mock:
      return MockSettings();
    default:
      return ProdSettings();
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Modular.setInitialRoute('/search');
  runApp(
    ModularApp(
      module: AppModule(_settings),
      child: const AppWidget(),
    ),
  );
}
