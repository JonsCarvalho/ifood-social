import 'package:get_it/get_it.dart';
import 'package:ifood_social_app/screens/create/presentation/controllers/create.controller.dart';
import 'package:ifood_social_app/screens/home/presentation/controllers/home.controller.dart';
import 'package:ifood_social_app/screens/update/presentation/controllers/update.controller.dart';

class ControllersInjection {
  static void init() {
    final getIt = GetIt.I;

    getIt.registerFactory<CreateController>(
      () => CreateController(getIt()),
    );

    getIt.registerFactory<UpdateController>(
      () => UpdateController(getIt(), getIt()),
    );

    getIt.registerFactory<HomeController>(
      () => HomeController(getIt(), getIt()),
    );
  }
}
