// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderResponseModel _$$_OrderResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderResponseModel(
      error: json['error'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderResponseModelToJson(
        _$_OrderResponseModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
    };
