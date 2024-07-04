import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/entities/get_products.response.dart';

abstract class GetProductsRepository {
  Future<Either<Exception, GetProductsResponse>> call();
}
