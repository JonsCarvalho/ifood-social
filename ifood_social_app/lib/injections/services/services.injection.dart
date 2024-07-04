import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class ServicesInjection {
  static Future<void> init() async {
    final getIt = GetIt.I;
    final httpClient = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:3000/api'));

    getIt.registerLazySingleton<Dio>(() => httpClient);
  }
}
