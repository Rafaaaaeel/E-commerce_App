import '../../domain/entity/product.entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel(
    super.name,
    super.price,
    super.historyPrice,
    super.discountPercentage,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      json["name"],
      json["price"],
      json["historyPrice"],
      json["discountPercengate"],
    );
  }
}
