import 'dart:convert';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:search/src/features/products_list/data/models/products_list_models.dart';
import 'package:search/src/features/products_list/data/sources/remote/datasource/products_list_datasource.dart';


class ProductsListLocalDatasource implements ProductsListDatasource {
  @override
  Future<Either<Failure, ProductsListModel>> fetchProductsList() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return Right(ProductsListModel.fromJson(json.decode(_mockProductsList)));
    } catch (e) {
      return Left(Failure('message', 500));
    }
  }
}

final _mockProductsList = json.encode({
  "products": [
    {
      "name": "Geladeira Brastemp 4 portas",
      "price": 24.94,
      "historyPrice": 25.95,
      "discountPercengate": 0.0
    },
    {
      "name": "Fogão 4 bocas",
      "price": 40.94,
      "historyPrice": 26.2,
      "discountPercengate": 0.0
    },
    {
      "name": "Fogão 5 bocas",
      "price": 240.94,
      "historyPrice": 32.9,
      "discountPercengate": 0.0
    },
    {
      "name": "Cooktop 4 bocas",
      "price": 124.94,
      "historyPrice": 32.9,
      "discountPercengate": 0.0
    },
    {
      "name": "Frigideira",
      "price": 224.94,
      "historyPrice": 32.9,
      "discountPercengate": 0.0
    },
    {
      "name": "Panela de pressão",
      "price": 624.94,
      "historyPrice": 32.9,
      "discountPercengate": 0.0
    },
    {
      "name": "Garfo",
      "price": 4.94,
      "historyPrice": 32.1,
      "discountPercengate": 0.0
    },
    {
      "name": "Faca",
      "price": 2.94,
      "historyPrice": 1.1,
      "discountPercengate": 0.0
    },
    {
      "name": "Colher",
      "price": 3.94,
      "historyPrice": 32.5,
      "discountPercengate": 0.0
    },
    {
      "name": "Esponja",
      "price": 1.94,
      "historyPrice": 32.4,
      "discountPercengate": 0.0
    },
    {
      "name": "Kit talheres",
      "price": 6.94,
      "historyPrice": 32.1,
      "discountPercengate": 0.0
    }
  ]
});
