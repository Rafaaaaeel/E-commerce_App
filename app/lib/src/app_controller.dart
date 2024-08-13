import 'package:core/core.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppController extends Disposable {
  AppController() {
    Localize.shared.setup(packagesLoaded: [
      "search",
    ]);
  }

  @override
  void dispose() {}
}
