// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePasswordRequestModel _$ChangePasswordRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequestModel {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_password')
  String get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordRequestModelCopyWith<ChangePasswordRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestModelCopyWith<$Res> {
  factory $ChangePasswordRequestModelCopyWith(ChangePasswordRequestModel value,
          $Res Function(ChangePasswordRequestModel) then) =
      _$ChangePasswordRequestModelCopyWithImpl<$Res,
          ChangePasswordRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'old_password') String oldPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class _$ChangePasswordRequestModelCopyWithImpl<$Res,
        $Val extends ChangePasswordRequestModel>
    implements $ChangePasswordRequestModelCopyWith<$Res> {
  _$ChangePasswordRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordRequestModelCopyWith<$Res>
    implements $ChangePasswordRequestModelCopyWith<$Res> {
  factory _$$_ChangePasswordRequestModelCopyWith(
          _$_ChangePasswordRequestModel value,
          $Res Function(_$_ChangePasswordRequestModel) then) =
      __$$_ChangePasswordRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'old_password') String oldPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class __$$_ChangePasswordRequestModelCopyWithImpl<$Res>
    extends _$ChangePasswordRequestModelCopyWithImpl<$Res,
        _$_ChangePasswordRequestModel>
    implements _$$_ChangePasswordRequestModelCopyWith<$Res> {
  __$$_ChangePasswordRequestModelCopyWithImpl(
      _$_ChangePasswordRequestModel _value,
      $Res Function(_$_ChangePasswordRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$_ChangePasswordRequestModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangePasswordRequestModel implements _ChangePasswordRequestModel {
  const _$_ChangePasswordRequestModel(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'old_password') required this.oldPassword,
      @JsonKey(name: 'new_password') required this.newPassword});

  factory _$_ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePasswordRequestModelFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'old_password')
  final String oldPassword;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordRequestModel(userId: $userId, oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordRequestModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, oldPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordRequestModelCopyWith<_$_ChangePasswordRequestModel>
      get copyWith => __$$_ChangePasswordRequestModelCopyWithImpl<
          _$_ChangePasswordRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePasswordRequestModelToJson(
      this,
    );
  }
}

abstract class _ChangePasswordRequestModel
    implements ChangePasswordRequestModel {
  const factory _ChangePasswordRequestModel(
          {@JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'old_password') required final String oldPassword,
          @JsonKey(name: 'new_password') required final String newPassword}) =
      _$_ChangePasswordRequestModel;

  factory _ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =
      _$_ChangePasswordRequestModel.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'old_password')
  String get oldPassword;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordRequestModelCopyWith<_$_ChangePasswordRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
