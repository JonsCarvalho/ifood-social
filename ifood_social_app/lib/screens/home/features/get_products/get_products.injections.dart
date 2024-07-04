import 'package:get_it/get_it.dart';
import 'package:ifood_social_app/screens/home/features/get_products/data/datasources/get_products.datasource.dart';
import 'package:ifood_social_app/screens/home/features/get_products/data/repositories/get_products.repository.impl.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/repositories/get_products.repository.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/usecases/get_products.usecase.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/usecases/get_products.usecase.impl.dart';
import 'package:ifood_social_app/screens/home/features/get_products/external/get_products.datasource.impl.dart';

class GetProductsInjections {
  static void init() {
    final GetIt getIt = GetIt.instance;

    getIt.registerFactory<GetProductsDatasource>(
      () => GetProductsDatasourceImpl(getIt()),
    );

    getIt.registerFactory<GetProductsRepository>(
      () => GetProductsRepositoryImpl(getIt()),
    );

    getIt.registerFactory<GetProductsUseCase>(
      () => GetProductsUseCaseImpl(getIt()),
    );
  }
}
