// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionModel _$SessionModelFromJson(Map<String, dynamic> json) {
  return _SessionModel.fromJson(json);
}

/// @nodoc
mixin _$SessionModel {
  String get username => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  DateTime? get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionModelCopyWith<SessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionModelCopyWith<$Res> {
  factory $SessionModelCopyWith(
          SessionModel value, $Res Function(SessionModel) then) =
      _$SessionModelCopyWithImpl<$Res, SessionModel>;
  @useResult
  $Res call(
      {String username,
      int? id,
      String? name,
      String? email,
      DateTime? createdOn});
}

/// @nodoc
class _$SessionModelCopyWithImpl<$Res, $Val extends SessionModel>
    implements $SessionModelCopyWith<$Res> {
  _$SessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionModelCopyWith<$Res>
    implements $SessionModelCopyWith<$Res> {
  factory _$$_SessionModelCopyWith(
          _$_SessionModel value, $Res Function(_$_SessionModel) then) =
      __$$_SessionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      int? id,
      String? name,
      String? email,
      DateTime? createdOn});
}

/// @nodoc
class __$$_SessionModelCopyWithImpl<$Res>
    extends _$SessionModelCopyWithImpl<$Res, _$_SessionModel>
    implements _$$_SessionModelCopyWith<$Res> {
  __$$_SessionModelCopyWithImpl(
      _$_SessionModel _value, $Res Function(_$_SessionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$_SessionModel(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionModel implements _SessionModel {
  const _$_SessionModel(
      {required this.username, this.id, this.name, this.email, this.createdOn});

  factory _$_SessionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SessionModelFromJson(json);

  @override
  final String username;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final DateTime? createdOn;

  @override
  String toString() {
    return 'SessionModel(username: $username, id: $id, name: $name, email: $email, createdOn: $createdOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionModel &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, id, name, email, createdOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionModelCopyWith<_$_SessionModel> get copyWith =>
      __$$_SessionModelCopyWithImpl<_$_SessionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionModelToJson(
      this,
    );
  }
}

abstract class _SessionModel implements SessionModel {
  const factory _SessionModel(
      {required final String username,
      final int? id,
      final String? name,
      final String? email,
      final DateTime? createdOn}) = _$_SessionModel;

  factory _SessionModel.fromJson(Map<String, dynamic> json) =
      _$_SessionModel.fromJson;

  @override
  String get username;
  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  DateTime? get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$_SessionModelCopyWith<_$_SessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
