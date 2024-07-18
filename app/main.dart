import '../core/settings/settings.dart';
import 'app_module.dart';
import 'app_widget.dart';

Settings get _settings {
  switch (const String.fromEnvironment('env')) {
    case 'mock':
      return MockSettings();
    default:
      return ProdSettings();
  }
}

Future<void> main() async {
  await AppModule(
    _settings,
    const AppWidget(),
  ).run();
}
