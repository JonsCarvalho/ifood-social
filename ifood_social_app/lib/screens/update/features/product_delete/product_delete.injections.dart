import 'package:get_it/get_it.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/datasources/product_delete.datasource.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/repositories/product_delete.repository.impl.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/repositories/product_delete.repository.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/usecases/product_delete.usecase.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/usecases/product_delete.usecase.impl.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/external/product_delete.datasource.impl.dart';

class ProductDeleteInjections {
  static void init() {
    final GetIt getIt = GetIt.instance;

    getIt.registerFactory<ProductDeleteDatasource>(
      () => ProductDeleteDatasourceImpl(getIt()),
    );

    getIt.registerFactory<ProductDeleteRepository>(
      () => ProductDeleteRepositoryImpl(getIt()),
    );

    getIt.registerFactory<ProductDeleteUseCase>(
      () => ProductDeleteUseCaseImpl(getIt()),
    );
  }
}
