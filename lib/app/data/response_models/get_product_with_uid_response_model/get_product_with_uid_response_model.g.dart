// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_with_uid_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetProductWithUidResponseModel _$$_GetProductWithUidResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_GetProductWithUidResponseModel(
      error: json['error'] as String?,
      data: json['data'] == null
          ? null
          : ProductModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetProductWithUidResponseModelToJson(
        _$_GetProductWithUidResponseModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
    };
