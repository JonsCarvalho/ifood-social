import 'package:ifood_social_app/screens/home/features/get_categories/domain/entities/get_categories.response.dart';
import 'package:ifood_social_app/shared/category.model.dart';

class GetCategoriesResponseDto extends GetCategoriesResponse {
  GetCategoriesResponseDto({
    required List<Category> categories,
  }) : super(
          categories: categories,
        );

  static GetCategoriesResponse fromJson(Map<String, dynamic> json) {
    return GetCategoriesResponse(
      categories: (json['result'] as List).map((e) => Category.fromMap(e)).toList(),
    );
  }
}
