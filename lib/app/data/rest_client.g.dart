// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://caffeinated-madhu.onrender.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserResponseModel> login(loginRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginRequest.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/auth/login/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserResponseModel> signup(signupRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(signupRequest.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/auth/signup/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> logout() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/auth/logout',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<UserResponseModel> getCurrentDropshipper() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/user',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserResponseModel> updateUser(user) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(user.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserResponseModel>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/user/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PasswordResetResponseModel> sendPasswordResetEmail(
      passwordResetRequestModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(passwordResetRequestModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PasswordResetResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/auth/send-reset-link/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PasswordResetResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChangePasswordResponseModel> changePassword(
      changePasswordRequestModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(changePasswordRequestModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChangePasswordResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/auth/change-password/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChangePasswordResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetProductWithUidResponseModel> getProduct({
    required productId,
    required uid,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetProductWithUidResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/product/${productId}/for_uid/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetProductWithUidResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetProductsResponseModel> getAllProducts({required uid}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetProductsResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/product/all/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetProductsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetProductsResponseModel> getAllBookmarkedProducts(
      {required uid}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetProductsResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/product/all_bookmarked/for_uid/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetProductsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BookmarkResponseModel> bookmark({
    required productId,
    required uid,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BookmarkResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/product/${productId}/bookmark/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BookmarkResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BookmarkResponseModel> removeBookmark({
    required productId,
    required uid,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BookmarkResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/product/${productId}/remove_bookmark/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BookmarkResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CartResponseModel> addToCart({
    required uid,
    required cartRequestModel,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(cartRequestModel.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CartResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/cart/add_to_cart/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CartResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CartResponseModel> getCart({required uid}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CartResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/cart/get_cart/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CartResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CartResponseModel> removeFromCart({
    required uid,
    required cartRequestModel,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(cartRequestModel.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CartResponseModel>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/cart/remove_from_cart/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CartResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CartResponseModel> clearCart({required uid}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CartResponseModel>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/cart/clear_cart/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CartResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OrderResponseModel> orderInstantly({
    required uid,
    required carts,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(carts.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<OrderResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/order/create_instant_order/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OrderResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OrderResponseModel> order({required uid}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<OrderResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/order/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OrderResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NotificationResponseModel> getNotifications({required uid}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'uid': uid};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NotificationResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/notification/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NotificationResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> deleteNotification({required id}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/notification/${id}/',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
