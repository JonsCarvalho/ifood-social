import 'package:ifood_social_app/screens/home/features/get_categories/domain/entities/get_categories.response.dart';
import 'package:ifood_social_app/screens/home/features/get_categories/domain/usecases/get_categories.usecase.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/entities/get_products.response.dart';
import 'package:ifood_social_app/screens/home/features/get_products/domain/usecases/get_products.usecase.dart';
import 'package:mobx/mobx.dart';

part 'home.controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final GetProductsUseCase _getProductsUseCase;
  final GetCategoriesUseCase _getCategoriesUseCase;

  HomeControllerBase(
    this._getProductsUseCase,
    this._getCategoriesUseCase,
  );

  @observable
  bool _loading = false;

  @computed
  bool get loading => _loading;

  @action
  void setLoading(bool value) => _loading = value;

  @observable
  Exception? _error;

  @computed
  Exception? get error => _error;

  @action
  void setError(Exception value) => _error = value;

  @observable
  GetProductsResponse? _getProductsResponse;

  @computed
  GetProductsResponse? get getProductsResponse => _getProductsResponse;

  @action
  void setProductsResponse(GetProductsResponse value) => _getProductsResponse = value;

  @action
  Future<void> getProducts() async {
    setLoading(true);

    final result = await _getProductsUseCase();
    result.fold(_getProductsError, _getProductsSuccess);
  }

  @action
  void _getProductsError(Exception error) {
    setError(error);
    setLoading(false);
  }

  @action
  void _getProductsSuccess(GetProductsResponse response) {
    setProductsResponse(response);
    setLoading(false);
  }

  @observable
  GetCategoriesResponse? _getCategoriesResponse;

  @computed
  GetCategoriesResponse? get getCategoriesResponse => _getCategoriesResponse;

  @action
  void setCategoriesResponse(GetCategoriesResponse value) => _getCategoriesResponse = value;

  @action
  Future<void> getCategories() async {
    setLoading(true);

    final result = await _getCategoriesUseCase();
    result.fold(_getCategoriesError, _getCategoriesSuccess);
  }

  @action
  void _getCategoriesError(Exception error) {
    setError(error);
    setLoading(false);
  }

  @action
  void _getCategoriesSuccess(GetCategoriesResponse response) {
    setCategoriesResponse(response);
    setLoading(false);
  }
}
