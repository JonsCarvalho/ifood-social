import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/datasources/product_update.datasource.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/dto/product_update.request.dto.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/dto/product_update.response.dto.dart';
import 'package:ifood_social_app/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:ifood_social_app/screens/update/features/product_update/domain/entities/product_update.response.dart';

class ProductUpdateDatasourceImpl implements ProductUpdateDatasource {
  final Dio _httpClient;

  ProductUpdateDatasourceImpl(this._httpClient);

  static const String _path = '/produtos';

  @override
  Future<ProductUpdateResponse> call(ProductUpdateRequest productUpdateRequest) async {
    try {
      debugPrint('\n\n::::PATH: $_path');

      await _httpClient.put(_path, data: ProductUpdateRequestDto.toJson(productUpdateRequest));

      debugPrint('::::RESPONSE: SUCCESS\n');

      await Future.delayed(const Duration(seconds: 1));

      final result = ProductUpdateResponseDto.fromJson({'message': 'Produto atualizado com sucesso!'});
      return result;
    } catch (e) {
      debugPrint('Error in ProductUpdateDataSourceImpl :::: $e');
      throw Exception(['Error in ProductUpdateDataSourceImpl :::: $e']);
    }
  }
}
