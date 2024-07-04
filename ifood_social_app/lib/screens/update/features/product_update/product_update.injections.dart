import 'package:get_it/get_it.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/datasources/product_update.datasource.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/repositories/product_update.repository.impl.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/repositories/product_update.repository.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/usecases/product_update.usecase.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/usecases/product_update.usecase.impl.dart';
import 'package:ifood_social_app/screens/update/features/product_update/external/product_update.datasource.impl.dart';

class ProductUpdateInjections {
  static void init() {
    final GetIt getIt = GetIt.instance;

    getIt.registerFactory<ProductUpdateDatasource>(
      () => ProductUpdateDatasourceImpl(getIt()),
    );

    getIt.registerFactory<ProductUpdateRepository>(
      () => ProductUpdateRepositoryImpl(getIt()),
    );

    getIt.registerFactory<ProductUpdateUseCase>(
      () => ProductUpdateUseCaseImpl(getIt()),
    );
  }
}
