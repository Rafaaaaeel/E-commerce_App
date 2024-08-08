import 'package:dartz/dartz.dart';

import '../../../../../../../../../core/network/failure.dart';
import '../../models/search_content_model.dart';

abstract interface class SearchProductsDatasource {
  Future<Either<Failure, SearchContentModel>> fetchSearchQuery(String query);
}
