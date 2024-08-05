import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/products_list_bloc.dart';
import 'bloc/products_list_event.dart';
import 'bloc/products_list_state.dart';
import 'widgets/products_list_header_widget.dart';
import 'widgets/products_list_widget.dart';

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

    _bloc.add(FetchroductsListEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductsListHeaderWidget(),
            BlocBuilder<ProductsListBloc, ProductsListState>(
              bloc: _bloc,
              builder: (_, state) {
                if (state is SuccessFetchingProductsListState) {
                  return ProductsListWidget(state.productsList);
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
            )
          ],
        ),
      ),
    );
  }
}
