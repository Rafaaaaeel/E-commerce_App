import 'package:dartz/dartz.dart';

import '../../../../../../../../../../../core/network/failure.dart';
import '../../../../models/products_list_models.dart';
import '../../channel/products_channel.dart';
import '../products_list_datasource.dart';

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
