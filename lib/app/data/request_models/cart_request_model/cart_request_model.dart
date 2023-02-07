import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_request_model.freezed.dart';

part 'cart_request_model.g.dart';

@freezed
class CartRequestModel with _$CartRequestModel {
  const factory CartRequestModel({
    @JsonKey(name: 'product_id') required int productId,
  }) = _CartRequestModel;

  factory CartRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CartRequestModelFromJson(json);
}
