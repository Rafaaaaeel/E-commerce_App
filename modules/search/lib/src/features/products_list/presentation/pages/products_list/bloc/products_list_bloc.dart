import '../../../../domain/usecases/products_list_usecase.dart';
import 'products_list_event.dart';
import 'products_list_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsListBloc extends Bloc<ProductsListEvent, ProductsListState> {
  final ProductsListUsecase _productsListUsecase;

  ProductsListBloc(this._productsListUsecase)
      : super(LoadingProductsListState()) {
    on<FetchroductsListEvent>(_onFetchingProductsList);
  }

  Future<void> _onFetchingProductsList(FetchroductsListEvent event,
      Emitter<ProductsListState> emitter) async {
    final productsList = await _productsListUsecase.call(null);

    productsList.fold(
      (failure) => emitter(FailedFetchingProductsListState()),
      (productsList) => emitter(SuccessFetchingProductsListState(productsList)),
    );
  }
}
