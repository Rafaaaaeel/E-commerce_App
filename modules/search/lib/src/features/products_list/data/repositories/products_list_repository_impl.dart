import 'package:core/core.dart';
import 'package:search/src/features/products_list/data/sources/remote/datasource/local/products_list_local_datasource.dart';
import 'package:search/src/features/products_list/data/sources/remote/datasource/remote/products_list_channel_datasource.dart';
import 'package:search/src/features/products_list/domain/entity/products_list_entity.dart';
import 'package:search/src/features/products_list/domain/repositories/products_list_repository.dart';

import 'package:dartz/dartz.dart';



class ProductsListRepositoryImpl implements ProductsListRepository {
  final Settings _settings;
  final ProductsListChannelDatasource channelDatasource;
  final ProductsListLocalDatasource _localDatasource;

  ProductsListRepositoryImpl(this._settings, this.channelDatasource, this._localDatasource);

  @override
  Future<Either<Failure, ProductsListEntity>> fetchMovies() async {
    return await _settings.selectRepository(
      local: () => _localDatasource.fetchProductsList(),
      remote: () => channelDatasource.fetchProductsList(),
    );
  }
}
