// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: 'HomeControllerBase.loading'))
      .value;
  Computed<Exception?>? _$errorComputed;

  @override
  Exception? get error =>
      (_$errorComputed ??= Computed<Exception?>(() => super.error,
              name: 'HomeControllerBase.error'))
          .value;
  Computed<GetProductsResponse?>? _$getProductsResponseComputed;

  @override
  GetProductsResponse? get getProductsResponse =>
      (_$getProductsResponseComputed ??= Computed<GetProductsResponse?>(
              () => super.getProductsResponse,
              name: 'HomeControllerBase.getProductsResponse'))
          .value;
  Computed<GetCategoriesResponse?>? _$getCategoriesResponseComputed;

  @override
  GetCategoriesResponse? get getCategoriesResponse =>
      (_$getCategoriesResponseComputed ??= Computed<GetCategoriesResponse?>(
              () => super.getCategoriesResponse,
              name: 'HomeControllerBase.getCategoriesResponse'))
          .value;

  late final _$_loadingAtom =
      Atom(name: 'HomeControllerBase._loading', context: context);

  @override
  bool get _loading {
    _$_loadingAtom.reportRead();
    return super._loading;
  }

  @override
  set _loading(bool value) {
    _$_loadingAtom.reportWrite(value, super._loading, () {
      super._loading = value;
    });
  }

  late final _$_errorAtom =
      Atom(name: 'HomeControllerBase._error', context: context);

  @override
  Exception? get _error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  set _error(Exception? value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  late final _$_getProductsResponseAtom =
      Atom(name: 'HomeControllerBase._getProductsResponse', context: context);

  @override
  GetProductsResponse? get _getProductsResponse {
    _$_getProductsResponseAtom.reportRead();
    return super._getProductsResponse;
  }

  @override
  set _getProductsResponse(GetProductsResponse? value) {
    _$_getProductsResponseAtom.reportWrite(value, super._getProductsResponse,
        () {
      super._getProductsResponse = value;
    });
  }

  late final _$_getCategoriesResponseAtom =
      Atom(name: 'HomeControllerBase._getCategoriesResponse', context: context);

  @override
  GetCategoriesResponse? get _getCategoriesResponse {
    _$_getCategoriesResponseAtom.reportRead();
    return super._getCategoriesResponse;
  }

  @override
  set _getCategoriesResponse(GetCategoriesResponse? value) {
    _$_getCategoriesResponseAtom
        .reportWrite(value, super._getCategoriesResponse, () {
      super._getCategoriesResponse = value;
    });
  }

  late final _$getProductsAsyncAction =
      AsyncAction('HomeControllerBase.getProducts', context: context);

  @override
  Future<void> getProducts() {
    return _$getProductsAsyncAction.run(() => super.getProducts());
  }

  late final _$getCategoriesAsyncAction =
      AsyncAction('HomeControllerBase.getCategories', context: context);

  @override
  Future<void> getCategories() {
    return _$getCategoriesAsyncAction.run(() => super.getCategories());
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(Exception value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setError');
    try {
      return super.setError(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProductsResponse(GetProductsResponse value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setProductsResponse');
    try {
      return super.setProductsResponse(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getProductsError(Exception error) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase._getProductsError');
    try {
      return super._getProductsError(error);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getProductsSuccess(GetProductsResponse response) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase._getProductsSuccess');
    try {
      return super._getProductsSuccess(response);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategoriesResponse(GetCategoriesResponse value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setCategoriesResponse');
    try {
      return super.setCategoriesResponse(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getCategoriesError(Exception error) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase._getCategoriesError');
    try {
      return super._getCategoriesError(error);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getCategoriesSuccess(GetCategoriesResponse response) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase._getCategoriesSuccess');
    try {
      return super._getCategoriesSuccess(response);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
error: ${error},
getProductsResponse: ${getProductsResponse},
getCategoriesResponse: ${getCategoriesResponse}
    ''';
  }
}
