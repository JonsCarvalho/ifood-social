import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/entities/get_categories.response.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/repositories/get_categories.repository.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/usecases/get_categories.usecase.dart';

class GetCategoriesUseCaseImpl implements GetCategoriesUseCase {
  final GetCategoriesRepository _repository;

  GetCategoriesUseCaseImpl(this._repository);

  @override
  Future<Either<Exception, GetCategoriesResponse>> call() async {
    final response = await _repository();

    return response;
  }
}
