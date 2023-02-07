import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_response_model.freezed.dart';
part 'bookmark_response_model.g.dart';

@freezed
class BookmarkResponseModel with _$BookmarkResponseModel {
  const factory BookmarkResponseModel({
    String? message,
    String? error,
  }) = _BookmarkResponseModel;

  factory BookmarkResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BookmarkResponseModelFromJson(json);
}
