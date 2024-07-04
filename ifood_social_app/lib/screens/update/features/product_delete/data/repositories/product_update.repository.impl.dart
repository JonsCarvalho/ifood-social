import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/datasources/product_update.datasource.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/repositories/product_update.repository.dart';
import 'package:ifood_social_app/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:ifood_social_app/screens/update/features/product_update/domain/entities/product_update.response.dart';

class ProductUpdateRepositoryImpl extends ProductUpdateRepository {
  final ProductUpdateDatasource _datasource;

  ProductUpdateRepositoryImpl(this._datasource);

  @override
  Future<Either<Exception, ProductUpdateResponse>> call(ProductUpdateRequest productUpdateRequest) async {
    try {
      final result = await _datasource(productUpdateRequest);
      return Right(result);
    } on Exception catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception('Error in ProductUpdateDatasourceImpl :::: $e'));
    }
  }
}
