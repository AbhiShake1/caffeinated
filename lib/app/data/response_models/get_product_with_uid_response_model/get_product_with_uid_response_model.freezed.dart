// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_with_uid_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProductWithUidResponseModel _$GetProductWithUidResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetProductWithUidResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetProductWithUidResponseModel {
  String? get error => throw _privateConstructorUsedError;
  ProductModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductWithUidResponseModelCopyWith<GetProductWithUidResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductWithUidResponseModelCopyWith<$Res> {
  factory $GetProductWithUidResponseModelCopyWith(
          GetProductWithUidResponseModel value,
          $Res Function(GetProductWithUidResponseModel) then) =
      _$GetProductWithUidResponseModelCopyWithImpl<$Res,
          GetProductWithUidResponseModel>;
  @useResult
  $Res call({String? error, ProductModel? data});

  $ProductModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetProductWithUidResponseModelCopyWithImpl<$Res,
        $Val extends GetProductWithUidResponseModel>
    implements $GetProductWithUidResponseModelCopyWith<$Res> {
  _$GetProductWithUidResponseModelCopyWithImpl(this._value, this._then);

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
              as ProductModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetProductWithUidResponseModelCopyWith<$Res>
    implements $GetProductWithUidResponseModelCopyWith<$Res> {
  factory _$$_GetProductWithUidResponseModelCopyWith(
          _$_GetProductWithUidResponseModel value,
          $Res Function(_$_GetProductWithUidResponseModel) then) =
      __$$_GetProductWithUidResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, ProductModel? data});

  @override
  $ProductModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_GetProductWithUidResponseModelCopyWithImpl<$Res>
    extends _$GetProductWithUidResponseModelCopyWithImpl<$Res,
        _$_GetProductWithUidResponseModel>
    implements _$$_GetProductWithUidResponseModelCopyWith<$Res> {
  __$$_GetProductWithUidResponseModelCopyWithImpl(
      _$_GetProductWithUidResponseModel _value,
      $Res Function(_$_GetProductWithUidResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_GetProductWithUidResponseModel(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetProductWithUidResponseModel
    implements _GetProductWithUidResponseModel {
  const _$_GetProductWithUidResponseModel({this.error, this.data});

  factory _$_GetProductWithUidResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetProductWithUidResponseModelFromJson(json);

  @override
  final String? error;
  @override
  final ProductModel? data;

  @override
  String toString() {
    return 'GetProductWithUidResponseModel(error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductWithUidResponseModel &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductWithUidResponseModelCopyWith<_$_GetProductWithUidResponseModel>
      get copyWith => __$$_GetProductWithUidResponseModelCopyWithImpl<
          _$_GetProductWithUidResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetProductWithUidResponseModelToJson(
      this,
    );
  }
}

abstract class _GetProductWithUidResponseModel
    implements GetProductWithUidResponseModel {
  const factory _GetProductWithUidResponseModel(
      {final String? error,
      final ProductModel? data}) = _$_GetProductWithUidResponseModel;

  factory _GetProductWithUidResponseModel.fromJson(Map<String, dynamic> json) =
      _$_GetProductWithUidResponseModel.fromJson;

  @override
  String? get error;
  @override
  ProductModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetProductWithUidResponseModelCopyWith<_$_GetProductWithUidResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
