import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:search/src/features/products_list/domain/entity/products_list_entity.dart';
import 'package:search/src/features/products_list/domain/repositories/products_list_repository.dart';


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
