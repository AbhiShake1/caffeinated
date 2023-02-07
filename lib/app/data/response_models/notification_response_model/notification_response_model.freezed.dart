// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationResponseModel _$NotificationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponseModel {
  String? get error => throw _privateConstructorUsedError;
  List<NotificationModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationResponseModelCopyWith<NotificationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseModelCopyWith<$Res> {
  factory $NotificationResponseModelCopyWith(NotificationResponseModel value,
          $Res Function(NotificationResponseModel) then) =
      _$NotificationResponseModelCopyWithImpl<$Res, NotificationResponseModel>;
  @useResult
  $Res call({String? error, List<NotificationModel>? data});
}

/// @nodoc
class _$NotificationResponseModelCopyWithImpl<$Res,
        $Val extends NotificationResponseModel>
    implements $NotificationResponseModelCopyWith<$Res> {
  _$NotificationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationResponseModelCopyWith<$Res>
    implements $NotificationResponseModelCopyWith<$Res> {
  factory _$$_NotificationResponseModelCopyWith(
          _$_NotificationResponseModel value,
          $Res Function(_$_NotificationResponseModel) then) =
      __$$_NotificationResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, List<NotificationModel>? data});
}

/// @nodoc
class __$$_NotificationResponseModelCopyWithImpl<$Res>
    extends _$NotificationResponseModelCopyWithImpl<$Res,
        _$_NotificationResponseModel>
    implements _$$_NotificationResponseModelCopyWith<$Res> {
  __$$_NotificationResponseModelCopyWithImpl(
      _$_NotificationResponseModel _value,
      $Res Function(_$_NotificationResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_NotificationResponseModel(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationResponseModel implements _NotificationResponseModel {
  const _$_NotificationResponseModel(
      {this.error, final List<NotificationModel>? data})
      : _data = data;

  factory _$_NotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationResponseModelFromJson(json);

  @override
  final String? error;
  final List<NotificationModel>? _data;
  @override
  List<NotificationModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationResponseModel(error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationResponseModel &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationResponseModelCopyWith<_$_NotificationResponseModel>
      get copyWith => __$$_NotificationResponseModelCopyWithImpl<
          _$_NotificationResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationResponseModelToJson(
      this,
    );
  }
}

abstract class _NotificationResponseModel implements NotificationResponseModel {
  const factory _NotificationResponseModel(
      {final String? error,
      final List<NotificationModel>? data}) = _$_NotificationResponseModel;

  factory _NotificationResponseModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationResponseModel.fromJson;

  @override
  String? get error;
  @override
  List<NotificationModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationResponseModelCopyWith<_$_NotificationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
