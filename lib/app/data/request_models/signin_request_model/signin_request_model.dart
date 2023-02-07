import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_request_model.freezed.dart';

part 'signin_request_model.g.dart';

@freezed
class SigninRequestModel with _$SigninRequestModel {
  const factory SigninRequestModel({
    required String email,
    required String password,
  }) = _SigninRequestModel;

  factory SigninRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SigninRequestModelFromJson(json);
}
