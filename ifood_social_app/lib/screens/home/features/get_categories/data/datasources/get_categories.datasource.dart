import 'package:ifood_social_app/screens/home/features/get_categories/domain/entities/get_categories.response.dart';

abstract class GetCategoriesDatasource {
  Future<GetCategoriesResponse> call();
}
