import 'package:get_it/get_it.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/data/datasources/get_categories.datasource.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/data/repositories/get_categories.repository.impl.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/repositories/get_categories.repository.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/usecases/get_categories.usecase.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/usecases/get_categories.usecase.impl.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/external/get_categories.datasource.impl.dart';

class GetCategoriesInjections {
  static void init() {
    final GetIt getIt = GetIt.instance;

    getIt.registerFactory<GetCategoriesDatasource>(
      () => GetCategoriesDatasourceImpl(getIt()),
    );

    getIt.registerFactory<GetCategoriesRepository>(
      () => GetCategoriesRepositoryImpl(getIt()),
    );

    getIt.registerFactory<GetCategoriesUseCase>(
      () => GetCategoriesUseCaseImpl(getIt()),
    );
  }
}
