import 'package:caffeinated/app/data/data_models/notification_model/notification_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response_model.g.dart';

part 'notification_response_model.freezed.dart';

@freezed
class NotificationResponseModel with _$NotificationResponseModel {
  const factory NotificationResponseModel({
    String? error,
    List<NotificationModel>? data,
  }) = _NotificationResponseModel;

  factory NotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseModelFromJson(json);
}
