import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_response_model.freezed.dart';

part 'change_password_response_model.g.dart';

@freezed
class ChangePasswordResponseModel with _$ChangePasswordResponseModel {
  const factory ChangePasswordResponseModel({
    String? message,
    String? error,
  }) = _ChangePasswordResponseModel;

  factory ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordResponseModelFromJson(json);
}
