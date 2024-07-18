import 'package:dartz/dartz.dart';

import '../../../../../../../../core/network/failure.dart';
import '../entity/products_list_entity.dart';

abstract interface class ProductsListRepository {
  Future<Either<Failure, ProductsListEntity>> fetchMovies();
}
