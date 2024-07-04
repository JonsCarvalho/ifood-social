import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:ifood_social_app/shared/product.model.dart';

class ProductCreateRequestDto extends ProductCreateRequest {
  ProductCreateRequestDto({
    required Product product,
  }) : super(
          product: product,
        );

  static Map<String, dynamic> toJson(ProductCreateRequest request) {
    return request.product.toMap();
  }
}
