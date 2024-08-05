import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/search_product_page.dart';

class SearchProductModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const Searc~hProductPage()),
      ];
}
