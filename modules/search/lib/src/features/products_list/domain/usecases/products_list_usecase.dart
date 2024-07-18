import '../../../../../../../../core/network/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../../../core/usecase/usecase.dart';
import '../entity/products_list_entity.dart';
import '../repositories/products_list_repository.dart';

class ProductsListUsecase implements Usecase<ProductsListEntity, void> {
  final ProductsListRepository _repository;

  ProductsListUsecase(this._repository);

  @override
  Future<Either<Failure, ProductsListEntity>> call(void params) async {
    final response = await _repository.fetchMovies();

    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }
}
