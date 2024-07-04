import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/data/datasources/get_categories.datasource.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/data/dto/get_categories.response.dto.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/entities/get_categories.response.dart';

class GetCategoriesDatasourceImpl implements GetCategoriesDatasource {
  final Dio _httpClient;

  GetCategoriesDatasourceImpl(this._httpClient);

  static const String _path = '/categorias';

  @override
  Future<GetCategoriesResponse> call() async {
    try {
      debugPrint('\n\n::::PATH: $_path');

      final result = await _httpClient.get(_path);

      debugPrint('::::RESPONSE: SUCCESS\n');

      return GetCategoriesResponseDto.fromJson(result.data);
    } catch (e) {
      debugPrint('Error in GetCategoriesDataSourceImpl :::: $e');
      throw Exception(['Error in GetCategoriesDataSourceImpl :::: $e']);
    }
  }
}
