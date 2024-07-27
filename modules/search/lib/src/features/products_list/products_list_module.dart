import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/products_list_repository_impl.dart';
import 'data/sources/remote/channel/products_channel.dart';
import 'data/sources/remote/datasource/remote/products_list_channel_datasource.dart';
import 'data/sources/remote/datasource/local/products_list_local_datasource.dart';
import 'domain/repositories/products_list_repository.dart';
import 'domain/usecases/products_list_usecase.dart';
import 'presentation/pages/products_list/bloc/products_list_bloc.dart';
import 'presentation/pages/products_list/products_list.page.dart';

class ProductsListModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton(
          (i) => SearchChannel(),
        ),
        Bind.lazySingleton(
          (i) => ProductsListChannelDatasource(
            i(),
          ),
        ),
        Bind.lazySingleton(
          (i) => ProductsListLocalDatasource(),
        ),
        Bind.lazySingleton<ProductsListRepository>(
          (i) => ProductsListRepositoryImpl(
            i(),
            i(),
            i(),
          ),
        ),
        Bind.lazySingleton(
          (i) => ProductsListUsecase(
            i(),
          ),
        ),
        Bind.factory(
          (i) => ProductsListBloc(
            i(),
          ),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ProductsListPage()),
      ];
}
