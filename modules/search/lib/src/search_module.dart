import 'package:flutter_modular/flutter_modular.dart';

import 'features/search_product/search_product_module.dart';

class SearchModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SearchProductModule()),
      ];
}
