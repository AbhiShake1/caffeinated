// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) {
  return _UserResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserResponseModel {
  UserModel? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseModelCopyWith<UserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseModelCopyWith<$Res> {
  factory $UserResponseModelCopyWith(
          UserResponseModel value, $Res Function(UserResponseModel) then) =
      _$UserResponseModelCopyWithImpl<$Res, UserResponseModel>;
  @useResult
  $Res call({UserModel? data, String? error});

  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserResponseModelCopyWithImpl<$Res, $Val extends UserResponseModel>
    implements $UserResponseModelCopyWith<$Res> {
  _$UserResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserResponseModelCopyWith<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  factory _$$_UserResponseModelCopyWith(_$_UserResponseModel value,
          $Res Function(_$_UserResponseModel) then) =
      __$$_UserResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? data, String? error});

  @override
  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_UserResponseModelCopyWithImpl<$Res>
    extends _$UserResponseModelCopyWithImpl<$Res, _$_UserResponseModel>
    implements _$$_UserResponseModelCopyWith<$Res> {
  __$$_UserResponseModelCopyWithImpl(
      _$_UserResponseModel _value, $Res Function(_$_UserResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_UserResponseModel(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponseModel implements _UserResponseModel {
  const _$_UserResponseModel({this.data, this.error});

  factory _$_UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseModelFromJson(json);

  @override
  final UserModel? data;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserResponseModel(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserResponseModel &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserResponseModelCopyWith<_$_UserResponseModel> get copyWith =>
      __$$_UserResponseModelCopyWithImpl<_$_UserResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseModelToJson(
      this,
    );
  }
}

abstract class _UserResponseModel implements UserResponseModel {
  const factory _UserResponseModel(
      {final UserModel? data, final String? error}) = _$_UserResponseModel;

  factory _UserResponseModel.fromJson(Map<String, dynamic> json) =
      _$_UserResponseModel.fromJson;

  @override
  UserModel? get data;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_UserResponseModelCopyWith<_$_UserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
