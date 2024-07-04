import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/entities/get_products.response.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/repositories/get_products.repository.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/usecases/get_products.usecase.dart';

class GetProductsUseCaseImpl implements GetProductsUseCase {
  final GetProductsRepository _repository;

  GetProductsUseCaseImpl(this._repository);

  @override
  Future<Either<Exception, GetProductsResponse>> call() async {
    final response = await _repository();

    return response;
  }
}
