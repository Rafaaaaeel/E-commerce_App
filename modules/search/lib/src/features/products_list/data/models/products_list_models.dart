import '../../domain/entity/products_list_entity.dart';
import 'product_models.dart';

class ProductsListModel extends ProductsListEntity {
  const ProductsListModel(super.productsList);

  factory ProductsListModel.fromJson(Map<String, dynamic> json) {
    return ProductsListModel(
      List<ProductModel>.from(
        json["products"].map(
          (product) => ProductModel.fromJson(product),
        ),
      ),
    );
  }
}
