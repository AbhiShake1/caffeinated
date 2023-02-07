// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      dateOrdered:
          const DateTimeConverter().fromJson(json['date_ordered'] as String),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      carts: (json['carts'] as List<dynamic>)
          .map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'date_ordered': const DateTimeConverter().toJson(instance.dateOrdered),
      'status': _$OrderStatusEnumMap[instance.status]!,
      'carts': instance.carts,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.done: 'done',
  OrderStatus.cancelled: 'cancelled',
};
