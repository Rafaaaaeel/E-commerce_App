import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/app_module.dart';
import 'src/app_widget.dart';

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

  const locale = Locale('en', 'US');

  Localize.shared.load(
    activeLocale: locale,
    supportedLocales: [locale],
  );

  runApp(
    ModularApp(
      module: AppModule(_settings),
      child: AppWidget(),
    ),
  );
}
