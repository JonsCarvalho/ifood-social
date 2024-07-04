import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/entities/product_delete.request.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/entities/product_delete.response.dart';

abstract class ProductDeleteRepository {
  Future<Either<Exception, ProductDeleteResponse>> call(ProductDeleteRequest productDeleteRequest);
}
