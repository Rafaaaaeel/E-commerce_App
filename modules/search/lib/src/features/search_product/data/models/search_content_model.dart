import '../../domain/entities/search_content_entity.dart';

class SearchContentModel extends SearchContentEntity {
  SearchContentModel(
    super.title,
    super.type,
  );

  factory SearchContentModel.fromJson(Map<String, dynamic> json) {
    return SearchContentModel(
      json["title"],
      json["type"],
    );
  }
}
