import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request_model.freezed.dart';

part 'signup_request_model.g.dart';

@freezed
class SignupRequestModel with _$SignupRequestModel {
  const factory SignupRequestModel({
    required String name,
    required String email,
    required String password,
  }) = _SignupRequestModel;

  factory SignupRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestModelFromJson(json);
}
