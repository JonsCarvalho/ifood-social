import 'package:ifood_social_app/screens/home/features/get_products/domain/entities/get_products.response.dart';

abstract class GetProductsDatasource {
  Future<GetProductsResponse> call();
}
