import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.response.dart';

abstract class ProductCreateUseCase {
  Future<Either<Exception, ProductCreateResponse>> call(ProductCreateRequest productCreateRequest);
}
