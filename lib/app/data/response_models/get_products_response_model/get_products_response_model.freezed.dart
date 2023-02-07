// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProductsResponseModel _$GetProductsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetProductsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetProductsResponseModel {
  String? get error => throw _privateConstructorUsedError;
  List<ProductModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductsResponseModelCopyWith<GetProductsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsResponseModelCopyWith<$Res> {
  factory $GetProductsResponseModelCopyWith(GetProductsResponseModel value,
          $Res Function(GetProductsResponseModel) then) =
      _$GetProductsResponseModelCopyWithImpl<$Res, GetProductsResponseModel>;
  @useResult
  $Res call({String? error, List<ProductModel>? data});
}

/// @nodoc
class _$GetProductsResponseModelCopyWithImpl<$Res,
        $Val extends GetProductsResponseModel>
    implements $GetProductsResponseModelCopyWith<$Res> {
  _$GetProductsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetProductsResponseModelCopyWith<$Res>
    implements $GetProductsResponseModelCopyWith<$Res> {
  factory _$$_GetProductsResponseModelCopyWith(
          _$_GetProductsResponseModel value,
          $Res Function(_$_GetProductsResponseModel) then) =
      __$$_GetProductsResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, List<ProductModel>? data});
}

/// @nodoc
class __$$_GetProductsResponseModelCopyWithImpl<$Res>
    extends _$GetProductsResponseModelCopyWithImpl<$Res,
        _$_GetProductsResponseModel>
    implements _$$_GetProductsResponseModelCopyWith<$Res> {
  __$$_GetProductsResponseModelCopyWithImpl(_$_GetProductsResponseModel _value,
      $Res Function(_$_GetProductsResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_GetProductsResponseModel(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetProductsResponseModel implements _GetProductsResponseModel {
  const _$_GetProductsResponseModel(
      {this.error, final List<ProductModel>? data})
      : _data = data;

  factory _$_GetProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetProductsResponseModelFromJson(json);

  @override
  final String? error;
  final List<ProductModel>? _data;
  @override
  List<ProductModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetProductsResponseModel(error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductsResponseModel &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductsResponseModelCopyWith<_$_GetProductsResponseModel>
      get copyWith => __$$_GetProductsResponseModelCopyWithImpl<
          _$_GetProductsResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetProductsResponseModelToJson(
      this,
    );
  }
}

abstract class _GetProductsResponseModel implements GetProductsResponseModel {
  const factory _GetProductsResponseModel(
      {final String? error,
      final List<ProductModel>? data}) = _$_GetProductsResponseModel;

  factory _GetProductsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_GetProductsResponseModel.fromJson;

  @override
  String? get error;
  @override
  List<ProductModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetProductsResponseModelCopyWith<_$_GetProductsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
