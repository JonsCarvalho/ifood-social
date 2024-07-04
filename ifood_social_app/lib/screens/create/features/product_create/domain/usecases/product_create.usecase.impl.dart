import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.response.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/repositories/product_create.repository.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/usecases/product_create.usecase.dart';

class ProductCreateUseCaseImpl implements ProductCreateUseCase {
  final ProductCreateRepository _repository;

  ProductCreateUseCaseImpl(this._repository);

  @override
  Future<Either<Exception, ProductCreateResponse>> call(ProductCreateRequest productCreateRequest) async {
    final response = await _repository(productCreateRequest);

    return response;
  }
}
