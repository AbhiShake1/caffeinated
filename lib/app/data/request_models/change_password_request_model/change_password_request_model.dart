import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_request_model.freezed.dart';

part 'change_password_request_model.g.dart';

@freezed
class ChangePasswordRequestModel with _$ChangePasswordRequestModel {
  const factory ChangePasswordRequestModel({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'old_password') required String oldPassword,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _ChangePasswordRequestModel;

  factory ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestModelFromJson(json);
}
