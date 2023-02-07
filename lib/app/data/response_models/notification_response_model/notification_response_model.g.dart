// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationResponseModel _$$_NotificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationResponseModel(
      error: json['error'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NotificationResponseModelToJson(
        _$_NotificationResponseModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
    };
