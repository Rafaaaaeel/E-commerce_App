import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/products_list_bloc.dart';
import 'bloc/products_list_state.dart';

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
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductsListBloc, ProductsListState>(
        bloc: _bloc,
        builder: (_, state) {
          if (state is SuccessFetchingProductsListState) {
            return Center(
              child: Text(
                state.productsList.productsList[0].name,
              ),
            );
          }

          if (state is LoadingProductsListState) {
            return const Center(
              child: Text('loading'),
            );
          }

          if (state is FailedFetchingProductsListState) {
            return const Center(
              child: Text('Failure'),
            );
          }

          return const Center(
            child: Text('sem status'),
          );
        },
      ),
    );
  }
}
