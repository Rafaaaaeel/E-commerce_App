import 'package:flutter_modular/flutter_modular.dart';

import 'package:core/src/utils/localize.dart';


class AppController extends Disposable {
  AppController() {
    Localize.shared.setup(packagesLoaded: [
      "search",
    ]);
  }
  
  @override
  void dispose() {
  }

}
