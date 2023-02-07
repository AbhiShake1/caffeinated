// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartResponseModel _$CartResponseModelFromJson(Map<String, dynamic> json) {
  return _CartResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CartResponseModel {
  String? get error => throw _privateConstructorUsedError;
  List<CartModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartResponseModelCopyWith<CartResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResponseModelCopyWith<$Res> {
  factory $CartResponseModelCopyWith(
          CartResponseModel value, $Res Function(CartResponseModel) then) =
      _$CartResponseModelCopyWithImpl<$Res, CartResponseModel>;
  @useResult
  $Res call({String? error, List<CartModel>? data});
}

/// @nodoc
class _$CartResponseModelCopyWithImpl<$Res, $Val extends CartResponseModel>
    implements $CartResponseModelCopyWith<$Res> {
  _$CartResponseModelCopyWithImpl(this._value, this._then);

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
              as List<CartModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartResponseModelCopyWith<$Res>
    implements $CartResponseModelCopyWith<$Res> {
  factory _$$_CartResponseModelCopyWith(_$_CartResponseModel value,
          $Res Function(_$_CartResponseModel) then) =
      __$$_CartResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, List<CartModel>? data});
}

/// @nodoc
class __$$_CartResponseModelCopyWithImpl<$Res>
    extends _$CartResponseModelCopyWithImpl<$Res, _$_CartResponseModel>
    implements _$$_CartResponseModelCopyWith<$Res> {
  __$$_CartResponseModelCopyWithImpl(
      _$_CartResponseModel _value, $Res Function(_$_CartResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CartResponseModel(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CartModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartResponseModel implements _CartResponseModel {
  const _$_CartResponseModel({this.error, final List<CartModel>? data})
      : _data = data;

  factory _$_CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartResponseModelFromJson(json);

  @override
  final String? error;
  final List<CartModel>? _data;
  @override
  List<CartModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartResponseModel(error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartResponseModel &&
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
  _$$_CartResponseModelCopyWith<_$_CartResponseModel> get copyWith =>
      __$$_CartResponseModelCopyWithImpl<_$_CartResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartResponseModelToJson(
      this,
    );
  }
}

abstract class _CartResponseModel implements CartResponseModel {
  const factory _CartResponseModel(
      {final String? error,
      final List<CartModel>? data}) = _$_CartResponseModel;

  factory _CartResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CartResponseModel.fromJson;

  @override
  String? get error;
  @override
  List<CartModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CartResponseModelCopyWith<_$_CartResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
