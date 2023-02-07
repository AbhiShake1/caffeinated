// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookmarkResponseModel _$BookmarkResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BookmarkResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BookmarkResponseModel {
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkResponseModelCopyWith<BookmarkResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkResponseModelCopyWith<$Res> {
  factory $BookmarkResponseModelCopyWith(BookmarkResponseModel value,
          $Res Function(BookmarkResponseModel) then) =
      _$BookmarkResponseModelCopyWithImpl<$Res, BookmarkResponseModel>;
  @useResult
  $Res call({String? message, String? error});
}

/// @nodoc
class _$BookmarkResponseModelCopyWithImpl<$Res,
        $Val extends BookmarkResponseModel>
    implements $BookmarkResponseModelCopyWith<$Res> {
  _$BookmarkResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookmarkResponseModelCopyWith<$Res>
    implements $BookmarkResponseModelCopyWith<$Res> {
  factory _$$_BookmarkResponseModelCopyWith(_$_BookmarkResponseModel value,
          $Res Function(_$_BookmarkResponseModel) then) =
      __$$_BookmarkResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? error});
}

/// @nodoc
class __$$_BookmarkResponseModelCopyWithImpl<$Res>
    extends _$BookmarkResponseModelCopyWithImpl<$Res, _$_BookmarkResponseModel>
    implements _$$_BookmarkResponseModelCopyWith<$Res> {
  __$$_BookmarkResponseModelCopyWithImpl(_$_BookmarkResponseModel _value,
      $Res Function(_$_BookmarkResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_BookmarkResponseModel(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookmarkResponseModel implements _BookmarkResponseModel {
  const _$_BookmarkResponseModel({this.message, this.error});

  factory _$_BookmarkResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarkResponseModelFromJson(json);

  @override
  final String? message;
  @override
  final String? error;

  @override
  String toString() {
    return 'BookmarkResponseModel(message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookmarkResponseModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookmarkResponseModelCopyWith<_$_BookmarkResponseModel> get copyWith =>
      __$$_BookmarkResponseModelCopyWithImpl<_$_BookmarkResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarkResponseModelToJson(
      this,
    );
  }
}

abstract class _BookmarkResponseModel implements BookmarkResponseModel {
  const factory _BookmarkResponseModel(
      {final String? message, final String? error}) = _$_BookmarkResponseModel;

  factory _BookmarkResponseModel.fromJson(Map<String, dynamic> json) =
      _$_BookmarkResponseModel.fromJson;

  @override
  String? get message;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_BookmarkResponseModelCopyWith<_$_BookmarkResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
