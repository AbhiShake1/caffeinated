import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_response_model.freezed.dart';
part 'password_reset_response_model.g.dart';

@freezed
class PasswordResetResponseModel with _$PasswordResetResponseModel {
  const factory PasswordResetResponseModel({
    String? message,
    String? error,
  }) = _PasswordResetResponseModel;

  factory PasswordResetResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetResponseModelFromJson(json);
}
