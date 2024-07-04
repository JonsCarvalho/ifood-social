import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.response.dart';

class ProductCreateResponseDto extends ProductCreateResponse {
  ProductCreateResponseDto({
    required String message,
  }) : super(
          message: message,
        );

  static ProductCreateResponse fromJson(Map<String, dynamic> json) {
    return ProductCreateResponse(
      message: json['message'],
    );
  }
}
