import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_request_model.g.dart';

part 'password_reset_request_model.freezed.dart';

@freezed
class PasswordResetRequestModel with _$PasswordResetRequestModel {
  const factory PasswordResetRequestModel({
    required String email,
  }) = _PasswordResetRequestModel;

  factory PasswordResetRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetRequestModelFromJson(json);
}
