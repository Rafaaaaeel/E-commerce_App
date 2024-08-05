import 'package:flutter/material.dart';

import '../../../../domain/entity/product.entity.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductEntity product;

  const ProductCardWidget(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: 100,
        height: 100,
        child: Center(
          child: Text(product.name),
        ),
      ),
    );
  }
}
