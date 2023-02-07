// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SigninRequestModel _$SigninRequestModelFromJson(Map<String, dynamic> json) {
  return _SigninRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SigninRequestModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninRequestModelCopyWith<SigninRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninRequestModelCopyWith<$Res> {
  factory $SigninRequestModelCopyWith(
          SigninRequestModel value, $Res Function(SigninRequestModel) then) =
      _$SigninRequestModelCopyWithImpl<$Res, SigninRequestModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SigninRequestModelCopyWithImpl<$Res, $Val extends SigninRequestModel>
    implements $SigninRequestModelCopyWith<$Res> {
  _$SigninRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SigninRequestModelCopyWith<$Res>
    implements $SigninRequestModelCopyWith<$Res> {
  factory _$$_SigninRequestModelCopyWith(_$_SigninRequestModel value,
          $Res Function(_$_SigninRequestModel) then) =
      __$$_SigninRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SigninRequestModelCopyWithImpl<$Res>
    extends _$SigninRequestModelCopyWithImpl<$Res, _$_SigninRequestModel>
    implements _$$_SigninRequestModelCopyWith<$Res> {
  __$$_SigninRequestModelCopyWithImpl(
      _$_SigninRequestModel _value, $Res Function(_$_SigninRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SigninRequestModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SigninRequestModel implements _SigninRequestModel {
  const _$_SigninRequestModel({required this.email, required this.password});

  factory _$_SigninRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_SigninRequestModelFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SigninRequestModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigninRequestModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SigninRequestModelCopyWith<_$_SigninRequestModel> get copyWith =>
      __$$_SigninRequestModelCopyWithImpl<_$_SigninRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SigninRequestModelToJson(
      this,
    );
  }
}

abstract class _SigninRequestModel implements SigninRequestModel {
  const factory _SigninRequestModel(
      {required final String email,
      required final String password}) = _$_SigninRequestModel;

  factory _SigninRequestModel.fromJson(Map<String, dynamic> json) =
      _$_SigninRequestModel.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SigninRequestModelCopyWith<_$_SigninRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
