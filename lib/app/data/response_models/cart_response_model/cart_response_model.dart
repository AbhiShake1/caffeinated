import 'package:caffeinated/app/data/data_models/cart_model/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_response_model.freezed.dart';

part 'cart_response_model.g.dart';

@freezed
class CartResponseModel with _$CartResponseModel {
  const factory CartResponseModel({
    String? error,
    List<CartModel>? data,
  }) = _CartResponseModel;

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);
}
