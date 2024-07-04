import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/datasources/product_delete.datasource.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/data/dto/product_delete.response.dto.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/entities/product_delete.request.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/domain/entities/product_delete.response.dart';

class ProductDeleteDatasourceImpl implements ProductDeleteDatasource {
  final Dio _httpClient;

  ProductDeleteDatasourceImpl(this._httpClient);

  static const String _path = '';

  @override
  Future<ProductDeleteResponse> call(ProductDeleteRequest productDeleteRequest) async {
    try {
      debugPrint('\n\n::::PATH: $_path');

      await _httpClient.delete(_path, data: {'id': productDeleteRequest.id});

      debugPrint('::::RESPONSE: SUCCESS\n');

      await Future.delayed(const Duration(seconds: 1));

      final result = ProductDeleteResponseDto.fromJson({'message': 'Produto deletado com sucesso!'});
      return result;
    } catch (e) {
      debugPrint('Error in ProductDeleteDataSourceImpl :::: $e');
      throw Exception(['Error in ProductDeleteDataSourceImpl :::: $e']);
    }
  }
}
