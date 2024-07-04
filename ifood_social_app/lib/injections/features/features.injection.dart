import 'package:ifood_social_app/screens/create/features/product_create/product_create.injections.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/get_categories.injections.dart';
import 'package:ifood_social_app/screens/home/features/get_products/get_products.injections.dart';
import 'package:ifood_social_app/screens/update/features/product_delete/product_delete.injections.dart';
import 'package:ifood_social_app/screens/update/features/product_update/product_update.injections.dart';

class FeaturesInjection {
  static void init() {
    ProductCreateInjections.init();
    ProductUpdateInjections.init();
    ProductDeleteInjections.init();
    GetProductsInjections.init();
    GetCategoriesInjections.init();
  }
}
