// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangePasswordRequestModel _$$_ChangePasswordRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePasswordRequestModel(
      userId: json['user_id'] as int,
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$_ChangePasswordRequestModelToJson(
        _$_ChangePasswordRequestModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };
