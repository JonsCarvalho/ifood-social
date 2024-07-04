import 'package:ifood_social_app/screens/home/features/get_products/domain/entities/get_products.response.dart';
import 'package:ifood_social_app/shared/product.model.dart';

class GetProductsResponseDto extends GetProductsResponse {
  GetProductsResponseDto({
    required List<Product> products,
  }) : super(
          products: products,
        );

  static GetProductsResponse fromJson(Map<String, dynamic> json) {
    return GetProductsResponse(
      products: (json['result'] as List).map((e) => Product.fromMap(e)).toList(),
    );
  }
}
