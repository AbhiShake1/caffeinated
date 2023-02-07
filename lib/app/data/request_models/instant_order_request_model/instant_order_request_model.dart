import 'package:caffeinated/app/data/data_models/cart_model/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instant_order_request_model.freezed.dart';

part 'instant_order_request_model.g.dart';

@freezed
class InstantOrderRequestModel with _$InstantOrderRequestModel {
  const factory InstantOrderRequestModel({
    required List<CartModel> carts,
  }) = _InstantOrderRequestModel;

  factory InstantOrderRequestModel.fromJson(Map<String, dynamic> json) =>
      _$InstantOrderRequestModelFromJson(json);
}
