// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetProductsResponseModel _$$_GetProductsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_GetProductsResponseModel(
      error: json['error'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetProductsResponseModelToJson(
        _$_GetProductsResponseModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
    };
