// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartResponseModel _$$_CartResponseModelFromJson(Map<String, dynamic> json) =>
    _$_CartResponseModel(
      error: json['error'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CartResponseModelToJson(
        _$_CartResponseModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
    };
