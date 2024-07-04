import 'package:dartz/dartz.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/data/datasources/get_categories.datasource.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/entities/get_categories.response.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/repositories/get_categories.repository.dart';

class GetCategoriesRepositoryImpl extends GetCategoriesRepository {
  final GetCategoriesDatasource _datasource;

  GetCategoriesRepositoryImpl(this._datasource);

  @override
  Future<Either<Exception, GetCategoriesResponse>> call() async {
    try {
      final result = await _datasource();
      return Right(result);
    } on Exception catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception('Error in GetCategoriesDatasourceImpl :::: $e'));
    }
  }
}
