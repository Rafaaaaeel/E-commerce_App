import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:search/src/features/products_list/domain/entity/products_list_entity.dart';



abstract interface class ProductsListRepository {
  Future<Either<Failure, ProductsListEntity>> fetchMovies();
}
