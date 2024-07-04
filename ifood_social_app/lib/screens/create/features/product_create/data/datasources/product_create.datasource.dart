import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.response.dart';

abstract class ProductCreateDatasource {
  Future<ProductCreateResponse> call(ProductCreateRequest productCreateRequest);
}
