// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderResponseModel _$OrderResponseModelFromJson(Map<String, dynamic> json) {
  return _OrderResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OrderResponseModel {
  String? get error => throw _privateConstructorUsedError;
  List<OrderModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseModelCopyWith<OrderResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseModelCopyWith<$Res> {
  factory $OrderResponseModelCopyWith(
          OrderResponseModel value, $Res Function(OrderResponseModel) then) =
      _$OrderResponseModelCopyWithImpl<$Res, OrderResponseModel>;
  @useResult
  $Res call({String? error, List<OrderModel>? data});
}

/// @nodoc
class _$OrderResponseModelCopyWithImpl<$Res, $Val extends OrderResponseModel>
    implements $OrderResponseModelCopyWith<$Res> {
  _$OrderResponseModelCopyWithImpl(this._value, this._then);

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
              as List<OrderModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderResponseModelCopyWith<$Res>
    implements $OrderResponseModelCopyWith<$Res> {
  factory _$$_OrderResponseModelCopyWith(_$_OrderResponseModel value,
          $Res Function(_$_OrderResponseModel) then) =
      __$$_OrderResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, List<OrderModel>? data});
}

/// @nodoc
class __$$_OrderResponseModelCopyWithImpl<$Res>
    extends _$OrderResponseModelCopyWithImpl<$Res, _$_OrderResponseModel>
    implements _$$_OrderResponseModelCopyWith<$Res> {
  __$$_OrderResponseModelCopyWithImpl(
      _$_OrderResponseModel _value, $Res Function(_$_OrderResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_OrderResponseModel(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderResponseModel implements _OrderResponseModel {
  const _$_OrderResponseModel({this.error, final List<OrderModel>? data})
      : _data = data;

  factory _$_OrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderResponseModelFromJson(json);

  @override
  final String? error;
  final List<OrderModel>? _data;
  @override
  List<OrderModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderResponseModel(error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderResponseModel &&
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
  _$$_OrderResponseModelCopyWith<_$_OrderResponseModel> get copyWith =>
      __$$_OrderResponseModelCopyWithImpl<_$_OrderResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderResponseModelToJson(
      this,
    );
  }
}

abstract class _OrderResponseModel implements OrderResponseModel {
  const factory _OrderResponseModel(
      {final String? error,
      final List<OrderModel>? data}) = _$_OrderResponseModel;

  factory _OrderResponseModel.fromJson(Map<String, dynamic> json) =
      _$_OrderResponseModel.fromJson;

  @override
  String? get error;
  @override
  List<OrderModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_OrderResponseModelCopyWith<_$_OrderResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
