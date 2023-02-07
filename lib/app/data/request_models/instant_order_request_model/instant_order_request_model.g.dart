// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instant_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstantOrderRequestModel _$$_InstantOrderRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_InstantOrderRequestModel(
      carts: (json['carts'] as List<dynamic>)
          .map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InstantOrderRequestModelToJson(
        _$_InstantOrderRequestModel instance) =>
    <String, dynamic>{
      'carts': instance.carts,
    };
