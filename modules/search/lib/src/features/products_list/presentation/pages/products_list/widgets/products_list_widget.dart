import 'package:flutter/material.dart';

import '../../../../domain/entity/products_list_entity.dart';
import 'product_card_widget.dart';

class ProductsListWidget extends StatelessWidget {
  final ProductsListEntity productsList;

  const ProductsListWidget(this.productsList, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 150,
      ),
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) =>
          ProductCardWidget(productsList.productsList[0]),
    );
  }
}
