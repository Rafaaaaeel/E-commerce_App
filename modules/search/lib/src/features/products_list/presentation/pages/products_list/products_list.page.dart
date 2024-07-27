import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/products_list_bloc.dart';
import 'bloc/products_list_event.dart';
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

    _bloc.add(OnFetchingProductsListEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsListBloc, ProductsListState>(
      bloc: _bloc,
      builder: (_, state) {
        if (state is SuccessFetchingProductsListState) {
          return Scaffold(
            body: Center(
              child: Text(
                state.productsList.productsList[0].name,
              ),
            ),
          );
        }

        if (state is LoadingProductsListState) {
          return const Scaffold(
            body: Center(
              child: Text('loading'),
            ),
          );
        }

        if (state is FailedFetchingProductsListState) {
          return const Scaffold(
            body: Center(
              child: Text('Failure'),
            ),
          );
        }

        return const Scaffold(
          body: Center(
            child: Text('sem status'),
          ),
        );
      },
    );
  }
}
