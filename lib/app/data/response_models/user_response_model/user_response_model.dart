import 'package:caffeinated/app/data/data_models/user_model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_model.freezed.dart';

part 'user_response_model.g.dart';

@freezed
class UserResponseModel with _$UserResponseModel {
  const factory UserResponseModel({
    UserModel? data,
    String? error,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}
