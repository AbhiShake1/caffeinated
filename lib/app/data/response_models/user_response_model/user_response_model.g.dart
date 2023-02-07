// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponseModel _$$_UserResponseModelFromJson(Map<String, dynamic> json) =>
    _$_UserResponseModel(
      data: json['data'] == null
          ? null
          : UserModel.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_UserResponseModelToJson(
        _$_UserResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };
