import 'package:ifood_social_app/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:ifood_social_app/shared/product.model.dart';

class ProductUpdateRequestDto extends ProductUpdateRequest {
  ProductUpdateRequestDto({
    required Product product,
  }) : super(
          product: product,
        );

  static Map<String, dynamic> toJson(ProductUpdateRequest request) {
    return request.product.toMap();
  }
}
