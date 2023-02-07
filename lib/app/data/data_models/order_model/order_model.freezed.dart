// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @DateTimeConverter()
  @JsonKey(name: 'date_ordered')
  DateTime get dateOrdered => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  List<CartModel> get carts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {@DateTimeConverter() @JsonKey(name: 'date_ordered') DateTime dateOrdered,
      OrderStatus status,
      List<CartModel> carts});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOrdered = null,
    Object? status = null,
    Object? carts = null,
  }) {
    return _then(_value.copyWith(
      dateOrdered: null == dateOrdered
          ? _value.dateOrdered
          : dateOrdered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeConverter() @JsonKey(name: 'date_ordered') DateTime dateOrdered,
      OrderStatus status,
      List<CartModel> carts});
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOrdered = null,
    Object? status = null,
    Object? carts = null,
  }) {
    return _then(_$_OrderModel(
      dateOrdered: null == dateOrdered
          ? _value.dateOrdered
          : dateOrdered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel implements _OrderModel {
  const _$_OrderModel(
      {@DateTimeConverter()
      @JsonKey(name: 'date_ordered')
          required this.dateOrdered,
      required this.status,
      required final List<CartModel> carts})
      : _carts = carts;

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  @DateTimeConverter()
  @JsonKey(name: 'date_ordered')
  final DateTime dateOrdered;
  @override
  final OrderStatus status;
  final List<CartModel> _carts;
  @override
  List<CartModel> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  String toString() {
    return 'OrderModel(dateOrdered: $dateOrdered, status: $status, carts: $carts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.dateOrdered, dateOrdered) ||
                other.dateOrdered == dateOrdered) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._carts, _carts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateOrdered, status,
      const DeepCollectionEquality().hash(_carts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {@DateTimeConverter()
      @JsonKey(name: 'date_ordered')
          required final DateTime dateOrdered,
      required final OrderStatus status,
      required final List<CartModel> carts}) = _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  @DateTimeConverter()
  @JsonKey(name: 'date_ordered')
  DateTime get dateOrdered;
  @override
  OrderStatus get status;
  @override
  List<CartModel> get carts;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
