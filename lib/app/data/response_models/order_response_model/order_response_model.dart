import 'package:caffeinated/app/data/data_models/order_model/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_response_model.g.dart';

part 'order_response_model.freezed.dart';

@freezed
class OrderResponseModel with _$OrderResponseModel {
  const factory OrderResponseModel({
    String? error,
    List<OrderModel>? data,
  }) = _OrderResponseModel;

  factory OrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseModelFromJson(json);
}
