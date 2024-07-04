import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/home/features/get_products/data/datasources/get_products.datasource.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/entities/get_products.response.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/repositories/get_products.repository.dart';

class GetProductsRepositoryImpl extends GetProductsRepository {
  final GetProductsDatasource _datasource;

  GetProductsRepositoryImpl(this._datasource);

  @override
  Future<Either<Exception, GetProductsResponse>> call() async {
    try {
      final result = await _datasource();
      return Right(result);
    } on Exception catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception('Error in GetProductsDatasourceImpl :::: $e'));
    }
  }
}
