// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartRequestModel _$CartRequestModelFromJson(Map<String, dynamic> json) {
  return _CartRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CartRequestModel {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartRequestModelCopyWith<CartRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartRequestModelCopyWith<$Res> {
  factory $CartRequestModelCopyWith(
          CartRequestModel value, $Res Function(CartRequestModel) then) =
      _$CartRequestModelCopyWithImpl<$Res, CartRequestModel>;
  @useResult
  $Res call({@JsonKey(name: 'product_id') int productId});
}

/// @nodoc
class _$CartRequestModelCopyWithImpl<$Res, $Val extends CartRequestModel>
    implements $CartRequestModelCopyWith<$Res> {
  _$CartRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartRequestModelCopyWith<$Res>
    implements $CartRequestModelCopyWith<$Res> {
  factory _$$_CartRequestModelCopyWith(
          _$_CartRequestModel value, $Res Function(_$_CartRequestModel) then) =
      __$$_CartRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'product_id') int productId});
}

/// @nodoc
class __$$_CartRequestModelCopyWithImpl<$Res>
    extends _$CartRequestModelCopyWithImpl<$Res, _$_CartRequestModel>
    implements _$$_CartRequestModelCopyWith<$Res> {
  __$$_CartRequestModelCopyWithImpl(
      _$_CartRequestModel _value, $Res Function(_$_CartRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$_CartRequestModel(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartRequestModel implements _CartRequestModel {
  const _$_CartRequestModel(
      {@JsonKey(name: 'product_id') required this.productId});

  factory _$_CartRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartRequestModelFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;

  @override
  String toString() {
    return 'CartRequestModel(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartRequestModel &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartRequestModelCopyWith<_$_CartRequestModel> get copyWith =>
      __$$_CartRequestModelCopyWithImpl<_$_CartRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartRequestModelToJson(
      this,
    );
  }
}

abstract class _CartRequestModel implements CartRequestModel {
  const factory _CartRequestModel(
          {@JsonKey(name: 'product_id') required final int productId}) =
      _$_CartRequestModel;

  factory _CartRequestModel.fromJson(Map<String, dynamic> json) =
      _$_CartRequestModel.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$$_CartRequestModelCopyWith<_$_CartRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
