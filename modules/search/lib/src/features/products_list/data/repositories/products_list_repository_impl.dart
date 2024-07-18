import 'package:dartz/dartz.dart';

import '../../../../../../../../core/network/failure.dart';
import '../../../../../../../../core/settings/settings.dart';
import '../../domain/entity/products_list_entity.dart';
import '../../domain/repositories/products_list_repository.dart';
import '../sources/remote/datasource/products_list_datasource.dart';

class ProductsListRepositoryImpl implements ProductsListRepository {
  final Settings _settings;
  final ProductsListDatasource _datasource;

  ProductsListRepositoryImpl(this._settings, this._datasource);

  @override
  Future<Either<Failure, ProductsListEntity>> fetchMovies() async {
    return await _settings.selectRepository(
      local: () => _datasource.fetchProductsList(),
      remote: () =>  _datasource.fetchProductsList(),
    );
  }
}
