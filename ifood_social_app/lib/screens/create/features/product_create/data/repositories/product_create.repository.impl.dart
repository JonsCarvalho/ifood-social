import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/create/features/product_create/data/datasources/product_create.datasource.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.response.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/repositories/product_create.repository.dart';

class ProductCreateRepositoryImpl extends ProductCreateRepository {
  final ProductCreateDatasource _datasource;

  ProductCreateRepositoryImpl(this._datasource);

  @override
  Future<Either<Exception, ProductCreateResponse>> call(ProductCreateRequest productCreateRequest) async {
    try {
      final result = await _datasource(productCreateRequest);
      return Right(result);
    } on Exception catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception('Error in ProductCreateDatasourceImpl :::: $e'));
    }
  }
}
