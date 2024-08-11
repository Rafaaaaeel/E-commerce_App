import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:search/src/features/search_product/data/models/search_content_model.dart';



abstract interface class SearchProductsDatasource {
  Future<Either<Failure, SearchContentModel>> fetchSearchQuery(String query);
}
