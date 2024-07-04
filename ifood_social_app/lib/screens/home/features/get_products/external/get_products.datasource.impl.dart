import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ifood_social_app/screens/home/features/get_products/data/datasources/get_products.datasource.dart';
import 'package:ifood_social_app/screens/home/features/get_products/data/dto/get_products.response.dto.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/entities/get_products.response.dart';

class GetProductsDatasourceImpl implements GetProductsDatasource {
  final Dio _httpClient;

  GetProductsDatasourceImpl(this._httpClient);

  static const String _path = '/produtos';

  @override
  Future<GetProductsResponse> call() async {
    try {
      debugPrint('\n\n::::PATH: $_path');

      final result = await _httpClient.get(_path);

      debugPrint('::::RESPONSE: SUCCESS\n');

      return GetProductsResponseDto.fromJson(result.data);
    } catch (e) {
      debugPrint('Error in GetProductsDataSourceImpl :::: $e');
      throw Exception(['Error in GetProductsDataSourceImpl :::: $e']);
    }
  }
}
