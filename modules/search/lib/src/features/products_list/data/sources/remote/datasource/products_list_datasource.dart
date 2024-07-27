import 'package:dartz/dartz.dart';

import '../../../../../../../../../../core/network/failure.dart';
import '../../../models/products_list_models.dart';

abstract interface class ProductsListDatasource {
  Future<Either<Failure, ProductsListModel>> fetchProductsList();
}
