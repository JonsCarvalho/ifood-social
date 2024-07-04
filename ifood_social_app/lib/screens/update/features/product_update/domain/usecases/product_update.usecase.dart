import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:ifood_social_app/screens/update/features/product_update/domain/entities/product_update.response.dart';

abstract class ProductUpdateUseCase {
  Future<Either<Exception, ProductUpdateResponse>> call(ProductUpdateRequest productUpdateRequest);
}
