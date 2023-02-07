import 'package:caffeinated/app/data/data_models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_products_response_model.freezed.dart';
part 'get_products_response_model.g.dart';

@freezed
class GetProductsResponseModel with _$GetProductsResponseModel {
  const factory GetProductsResponseModel({
    String? error,
    List<ProductModel>? data,
  }) = _GetProductsResponseModel;

  factory GetProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetProductsResponseModelFromJson(json);
}
