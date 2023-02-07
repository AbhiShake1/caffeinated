import 'package:caffeinated/app/data/data_models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.g.dart';

part 'cart_model.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    @JsonKey(includeIfNull: false) int? id,
    required ProductModel product,
    required int quantity,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
