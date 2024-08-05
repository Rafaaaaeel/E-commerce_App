import 'package:flutter/material.dart';

class ProductsListHeaderWidget extends StatelessWidget {
  const ProductsListHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: SizedBox(
        width: width,
        height: 400,
      ),
    );
  }
}
