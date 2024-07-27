import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/products_list_bloc.dart';
import 'bloc/products_list_event.dart';

class ProductsListPage extends StatefulWidget {
  const ProductsListPage({super.key});

  @override
  State<ProductsListPage> createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage> {
  final ProductsListBloc _bloc = Modular.get<ProductsListBloc>();

  @override
  void initState() {
    super.initState();

    _bloc.add(OnFetchingProductsListEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Search'),
      ),
    );
  }
}
