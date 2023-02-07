import 'package:caffeinated/app/data/data_models/cart_model/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';

part 'order_model.g.dart';

class DateTimeConverter extends JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  @override
  String toJson(DateTime object) {
    return object.toUtc().toString();
  }
}

enum OrderStatus {
  pending,
  done,
  cancelled,
}

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    @DateTimeConverter()
    @JsonKey(name: 'date_ordered')
        required DateTime dateOrdered,
    required OrderStatus status,
    required List<CartModel> carts,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
