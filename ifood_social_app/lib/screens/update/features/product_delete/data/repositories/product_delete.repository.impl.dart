import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/datasources/product_delete.datasource.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/entities/product_delete.request.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/entities/product_delete.response.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/repositories/product_delete.repository.dart';

class ProductDeleteRepositoryImpl extends ProductDeleteRepository {
  final ProductDeleteDatasource _datasource;

  ProductDeleteRepositoryImpl(this._datasource);

  @override
  Future<Either<Exception, ProductDeleteResponse>> call(ProductDeleteRequest productDeleteRequest) async {
    try {
      final result = await _datasource(productDeleteRequest);
      return Right(result);
    } on Exception catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception('Error in ProductDeleteDatasourceImpl :::: $e'));
    }
  }
}
