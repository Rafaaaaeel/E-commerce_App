import 'package:flutter/material.dart';

import '../../../../domain/entity/products_list_entity.dart';
import 'product_card_widget.dart';

class ProductsListWidget extends StatelessWidget {
  final ProductsListEntity productsList;

  const ProductsListWidget(this.productsList, {super.key});

  @override
  Widget build(BuildContext context) {
    return ProductCardWidget(productsList.productsList.first);
  }
}
