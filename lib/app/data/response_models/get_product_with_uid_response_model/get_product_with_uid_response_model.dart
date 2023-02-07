import 'package:caffeinated/app/data/data_models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_product_with_uid_response_model.freezed.dart';

part 'get_product_with_uid_response_model.g.dart';

@freezed
class GetProductWithUidResponseModel with _$GetProductWithUidResponseModel {
  const factory GetProductWithUidResponseModel({
    String? error,
    ProductModel? data,
  }) = _GetProductWithUidResponseModel;

  factory GetProductWithUidResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetProductWithUidResponseModelFromJson(json);
}
