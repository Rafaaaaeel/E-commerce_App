import 'package:dartz/dartz.dart';

import '../../../../../../../../core/network/failure.dart';
import '../../../../../../../../core/settings/settings.dart';
import '../../domain/entity/products_list_entity.dart';
import '../../domain/repositories/products_list_repository.dart';
import '../sources/remote/datasource/products_list_channel_datasource.dart';
import '../sources/remote/datasource/products_list_local_datasource.dart';

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
