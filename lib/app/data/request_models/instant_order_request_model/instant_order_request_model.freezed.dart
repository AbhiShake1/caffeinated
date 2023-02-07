// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instant_order_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstantOrderRequestModel _$InstantOrderRequestModelFromJson(
    Map<String, dynamic> json) {
  return _InstantOrderRequestModel.fromJson(json);
}

/// @nodoc
mixin _$InstantOrderRequestModel {
  List<CartModel> get carts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstantOrderRequestModelCopyWith<InstantOrderRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstantOrderRequestModelCopyWith<$Res> {
  factory $InstantOrderRequestModelCopyWith(InstantOrderRequestModel value,
          $Res Function(InstantOrderRequestModel) then) =
      _$InstantOrderRequestModelCopyWithImpl<$Res, InstantOrderRequestModel>;
  @useResult
  $Res call({List<CartModel> carts});
}

/// @nodoc
class _$InstantOrderRequestModelCopyWithImpl<$Res,
        $Val extends InstantOrderRequestModel>
    implements $InstantOrderRequestModelCopyWith<$Res> {
  _$InstantOrderRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = null,
  }) {
    return _then(_value.copyWith(
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstantOrderRequestModelCopyWith<$Res>
    implements $InstantOrderRequestModelCopyWith<$Res> {
  factory _$$_InstantOrderRequestModelCopyWith(
          _$_InstantOrderRequestModel value,
          $Res Function(_$_InstantOrderRequestModel) then) =
      __$$_InstantOrderRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartModel> carts});
}

/// @nodoc
class __$$_InstantOrderRequestModelCopyWithImpl<$Res>
    extends _$InstantOrderRequestModelCopyWithImpl<$Res,
        _$_InstantOrderRequestModel>
    implements _$$_InstantOrderRequestModelCopyWith<$Res> {
  __$$_InstantOrderRequestModelCopyWithImpl(_$_InstantOrderRequestModel _value,
      $Res Function(_$_InstantOrderRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = null,
  }) {
    return _then(_$_InstantOrderRequestModel(
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstantOrderRequestModel implements _InstantOrderRequestModel {
  const _$_InstantOrderRequestModel({required final List<CartModel> carts})
      : _carts = carts;

  factory _$_InstantOrderRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_InstantOrderRequestModelFromJson(json);

  final List<CartModel> _carts;
  @override
  List<CartModel> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  String toString() {
    return 'InstantOrderRequestModel(carts: $carts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstantOrderRequestModel &&
            const DeepCollectionEquality().equals(other._carts, _carts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_carts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstantOrderRequestModelCopyWith<_$_InstantOrderRequestModel>
      get copyWith => __$$_InstantOrderRequestModelCopyWithImpl<
          _$_InstantOrderRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstantOrderRequestModelToJson(
      this,
    );
  }
}

abstract class _InstantOrderRequestModel implements InstantOrderRequestModel {
  const factory _InstantOrderRequestModel(
      {required final List<CartModel> carts}) = _$_InstantOrderRequestModel;

  factory _InstantOrderRequestModel.fromJson(Map<String, dynamic> json) =
      _$_InstantOrderRequestModel.fromJson;

  @override
  List<CartModel> get carts;
  @override
  @JsonKey(ignore: true)
  _$$_InstantOrderRequestModelCopyWith<_$_InstantOrderRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
