import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:search/src/features/products_list/data/models/products_list_models.dart';


abstract interface class ProductsListDatasource {
  Future<Either<Failure, ProductsListModel>> fetchProductsList();
}
