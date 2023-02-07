import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

class StringDoubleConverter extends JsonConverter<double, String> {
  const StringDoubleConverter();

  @override
  double fromJson(String json) {
    return double.parse(json);
  }

  @override
  String toJson(double object) {
    return object.toString();
  }
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String name,
    @StringDoubleConverter() required double price,
    String? description,
    required bool available,
    @Default(false) bool bookmarked,
    @JsonKey(name: 'image_url') required String imageUrl,
    @StringDoubleConverter() required double rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
