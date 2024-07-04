import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/entities/get_categories.response.dart';

abstract class GetCategoriesUseCase {
  Future<Either<Exception, GetCategoriesResponse>> call();
}
