import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ifood_social_app/screens/create/features/product_create/data/datasources/product_create.datasource.dart';
import 'package:ifood_social_app/screens/create/features/product_create/data/dto/product_create.request.dto.dart';
import 'package:ifood_social_app/screens/create/features/product_create/data/dto/product_create.response.dto.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:ifood_social_app/screens/create/features/product_create/domain/entities/product_create.response.dart';

class ProductCreateDatasourceImpl implements ProductCreateDatasource {
  final Dio _httpClient;

  ProductCreateDatasourceImpl(this._httpClient);

  static const String _path = '/produtos/criar';

  @override
  Future<ProductCreateResponse> call(ProductCreateRequest productCreateRequest) async {
    try {
      debugPrint('\n\n::::PATH: $_path');

      await _httpClient.post(_path, data: ProductCreateRequestDto.toJson(productCreateRequest));

      debugPrint('::::RESPONSE: SUCCESS\n');

      final result = ProductCreateResponseDto.fromJson({'message': 'Produto criado com sucesso!'});
      return result;
    } catch (e) {
      debugPrint('Error in ProductCreateDataSourceImpl :::: $e');
      throw Exception(['Error in ProductCreateDataSourceImpl :::: $e']);
    }
  }
}
