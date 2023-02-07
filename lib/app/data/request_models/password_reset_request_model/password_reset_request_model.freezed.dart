// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordResetRequestModel _$PasswordResetRequestModelFromJson(
    Map<String, dynamic> json) {
  return _PasswordResetRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PasswordResetRequestModel {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordResetRequestModelCopyWith<PasswordResetRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetRequestModelCopyWith<$Res> {
  factory $PasswordResetRequestModelCopyWith(PasswordResetRequestModel value,
          $Res Function(PasswordResetRequestModel) then) =
      _$PasswordResetRequestModelCopyWithImpl<$Res, PasswordResetRequestModel>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$PasswordResetRequestModelCopyWithImpl<$Res,
        $Val extends PasswordResetRequestModel>
    implements $PasswordResetRequestModelCopyWith<$Res> {
  _$PasswordResetRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordResetRequestModelCopyWith<$Res>
    implements $PasswordResetRequestModelCopyWith<$Res> {
  factory _$$_PasswordResetRequestModelCopyWith(
          _$_PasswordResetRequestModel value,
          $Res Function(_$_PasswordResetRequestModel) then) =
      __$$_PasswordResetRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_PasswordResetRequestModelCopyWithImpl<$Res>
    extends _$PasswordResetRequestModelCopyWithImpl<$Res,
        _$_PasswordResetRequestModel>
    implements _$$_PasswordResetRequestModelCopyWith<$Res> {
  __$$_PasswordResetRequestModelCopyWithImpl(
      _$_PasswordResetRequestModel _value,
      $Res Function(_$_PasswordResetRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_PasswordResetRequestModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PasswordResetRequestModel implements _PasswordResetRequestModel {
  const _$_PasswordResetRequestModel({required this.email});

  factory _$_PasswordResetRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordResetRequestModelFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordResetRequestModel(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordResetRequestModel &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordResetRequestModelCopyWith<_$_PasswordResetRequestModel>
      get copyWith => __$$_PasswordResetRequestModelCopyWithImpl<
          _$_PasswordResetRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordResetRequestModelToJson(
      this,
    );
  }
}

abstract class _PasswordResetRequestModel implements PasswordResetRequestModel {
  const factory _PasswordResetRequestModel({required final String email}) =
      _$_PasswordResetRequestModel;

  factory _PasswordResetRequestModel.fromJson(Map<String, dynamic> json) =
      _$_PasswordResetRequestModel.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordResetRequestModelCopyWith<_$_PasswordResetRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
