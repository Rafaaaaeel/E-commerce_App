import '../../../../domain/entity/products_list_entity.dart';

abstract class ProductsListState {}

class LoadingProductsListState extends ProductsListState {}

class FailedFetchingProductsListState extends ProductsListState {}

class SuccessFetchingProductsListState extends ProductsListState {
  final ProductsListEntity productsList;

  SuccessFetchingProductsListState(this.productsList);
}
