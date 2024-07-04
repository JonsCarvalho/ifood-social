import 'package:ifood_social_app/injections/controllers/controllers.injection.dart';
import 'package:ifood_social_app/injections/features/features.injection.dart';
import 'package:ifood_social_app/injections/services/services.injection.dart';

class AppInjections {
  static Future<void> init() async {
    await ServicesInjection.init();
    FeaturesInjection.init();
    ControllersInjection.init();
  }
}
