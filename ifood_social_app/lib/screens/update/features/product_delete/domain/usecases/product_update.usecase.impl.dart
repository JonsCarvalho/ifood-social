import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/repositories/product_update.repository.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/usecases/product_update.usecase.dart';
import 'package:ifood_social_app/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:ifood_social_app/screens/update/features/product_update/domain/entities/product_update.response.dart';

class ProductUpdateUseCaseImpl implements ProductUpdateUseCase {
  final ProductUpdateRepository _repository;

  ProductUpdateUseCaseImpl(this._repository);

  @override
  Future<Either<Exception, ProductUpdateResponse>> call(ProductUpdateRequest productUpdateRequest) async {
    final response = await _repository(productUpdateRequest);

    return response;
  }
}
