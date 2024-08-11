import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:search/src/features/products_list/data/models/products_list_models.dart';
import 'package:search/src/features/products_list/data/sources/remote/channel/products_channel.dart';
import 'package:search/src/features/products_list/data/sources/remote/datasource/products_list_datasource.dart';



class ProductsListChannelDatasource implements ProductsListDatasource {
  final SearchChannel _channel;

  ProductsListChannelDatasource(this._channel);

  @override
  Future<Either<Failure, ProductsListModel>> fetchProductsList() async {
    try {
      final ProductsListModel response = await _channel.fetchProductList();
      return Right(response);
    } catch (e) {
      return Left(Failure(e.toString(), 500));
    }
  }
}
