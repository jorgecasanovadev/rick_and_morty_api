// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterFailed value) failed,
    required TResult Function(CharacterLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterFailed value)? failed,
    TResult? Function(CharacterLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterFailed value)? failed,
    TResult Function(CharacterLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterLoadingCopyWith<$Res> {
  factory _$$CharacterLoadingCopyWith(
          _$CharacterLoading value, $Res Function(_$CharacterLoading) then) =
      __$$CharacterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterLoadingCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterLoading>
    implements _$$CharacterLoadingCopyWith<$Res> {
  __$$CharacterLoadingCopyWithImpl(
      _$CharacterLoading _value, $Res Function(_$CharacterLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterLoading implements CharacterLoading {
  _$CharacterLoading();

  @override
  String toString() {
    return 'CharacterEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterFailed value) failed,
    required TResult Function(CharacterLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterFailed value)? failed,
    TResult? Function(CharacterLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterFailed value)? failed,
    TResult Function(CharacterLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterLoading implements CharacterEvent {
  factory CharacterLoading() = _$CharacterLoading;
}

/// @nodoc
abstract class _$$CharacterFailedCopyWith<$Res> {
  factory _$$CharacterFailedCopyWith(
          _$CharacterFailed value, $Res Function(_$CharacterFailed) then) =
      __$$CharacterFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterFailedCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterFailed>
    implements _$$CharacterFailedCopyWith<$Res> {
  __$$CharacterFailedCopyWithImpl(
      _$CharacterFailed _value, $Res Function(_$CharacterFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterFailed implements CharacterFailed {
  _$CharacterFailed();

  @override
  String toString() {
    return 'CharacterEvent.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function()? loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterFailed value) failed,
    required TResult Function(CharacterLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterFailed value)? failed,
    TResult? Function(CharacterLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterFailed value)? failed,
    TResult Function(CharacterLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class CharacterFailed implements CharacterEvent {
  factory CharacterFailed() = _$CharacterFailed;
}

/// @nodoc
abstract class _$$CharacterLoadedCopyWith<$Res> {
  factory _$$CharacterLoadedCopyWith(
          _$CharacterLoaded value, $Res Function(_$CharacterLoaded) then) =
      __$$CharacterLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterLoadedCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterLoaded>
    implements _$$CharacterLoadedCopyWith<$Res> {
  __$$CharacterLoadedCopyWithImpl(
      _$CharacterLoaded _value, $Res Function(_$CharacterLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterLoaded implements CharacterLoaded {
  _$CharacterLoaded();

  @override
  String toString() {
    return 'CharacterEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterFailed value) failed,
    required TResult Function(CharacterLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterFailed value)? failed,
    TResult? Function(CharacterLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterFailed value)? failed,
    TResult Function(CharacterLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterLoaded implements CharacterEvent {
  factory CharacterLoaded() = _$CharacterLoaded;
}

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<CharacterModel> characters) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<CharacterModel> characters)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<CharacterModel> characters)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateFailed value) failed,
    required TResult Function(CharacterStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateFailed value)? failed,
    TResult? Function(CharacterStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateFailed value)? failed,
    TResult Function(CharacterStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterStateLoadingCopyWith<$Res> {
  factory _$$CharacterStateLoadingCopyWith(_$CharacterStateLoading value,
          $Res Function(_$CharacterStateLoading) then) =
      __$$CharacterStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStateLoadingCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateLoading>
    implements _$$CharacterStateLoadingCopyWith<$Res> {
  __$$CharacterStateLoadingCopyWithImpl(_$CharacterStateLoading _value,
      $Res Function(_$CharacterStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStateLoading implements CharacterStateLoading {
  _$CharacterStateLoading();

  @override
  String toString() {
    return 'CharacterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<CharacterModel> characters) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<CharacterModel> characters)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<CharacterModel> characters)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateFailed value) failed,
    required TResult Function(CharacterStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateFailed value)? failed,
    TResult? Function(CharacterStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateFailed value)? failed,
    TResult Function(CharacterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterStateLoading implements CharacterState {
  factory CharacterStateLoading() = _$CharacterStateLoading;
}

/// @nodoc
abstract class _$$CharacterStateFailedCopyWith<$Res> {
  factory _$$CharacterStateFailedCopyWith(_$CharacterStateFailed value,
          $Res Function(_$CharacterStateFailed) then) =
      __$$CharacterStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStateFailedCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateFailed>
    implements _$$CharacterStateFailedCopyWith<$Res> {
  __$$CharacterStateFailedCopyWithImpl(_$CharacterStateFailed _value,
      $Res Function(_$CharacterStateFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStateFailed implements CharacterStateFailed {
  _$CharacterStateFailed();

  @override
  String toString() {
    return 'CharacterState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<CharacterModel> characters) loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<CharacterModel> characters)? loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<CharacterModel> characters)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateFailed value) failed,
    required TResult Function(CharacterStateLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateFailed value)? failed,
    TResult? Function(CharacterStateLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateFailed value)? failed,
    TResult Function(CharacterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class CharacterStateFailed implements CharacterState {
  factory CharacterStateFailed() = _$CharacterStateFailed;
}

/// @nodoc
abstract class _$$CharacterStateLoadedCopyWith<$Res> {
  factory _$$CharacterStateLoadedCopyWith(_$CharacterStateLoaded value,
          $Res Function(_$CharacterStateLoaded) then) =
      __$$CharacterStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharacterModel> characters});
}

/// @nodoc
class __$$CharacterStateLoadedCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateLoaded>
    implements _$$CharacterStateLoadedCopyWith<$Res> {
  __$$CharacterStateLoadedCopyWithImpl(_$CharacterStateLoaded _value,
      $Res Function(_$CharacterStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$CharacterStateLoaded(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
    ));
  }
}

/// @nodoc

class _$CharacterStateLoaded implements CharacterStateLoaded {
  _$CharacterStateLoaded({required final List<CharacterModel> characters})
      : _characters = characters;

  final List<CharacterModel> _characters;
  @override
  List<CharacterModel> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharacterState.loaded(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateLoadedCopyWith<_$CharacterStateLoaded> get copyWith =>
      __$$CharacterStateLoadedCopyWithImpl<_$CharacterStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<CharacterModel> characters) loaded,
  }) {
    return loaded(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<CharacterModel> characters)? loaded,
  }) {
    return loaded?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<CharacterModel> characters)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateFailed value) failed,
    required TResult Function(CharacterStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateFailed value)? failed,
    TResult? Function(CharacterStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateFailed value)? failed,
    TResult Function(CharacterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterStateLoaded implements CharacterState {
  factory CharacterStateLoaded(
          {required final List<CharacterModel> characters}) =
      _$CharacterStateLoaded;

  List<CharacterModel> get characters;
  @JsonKey(ignore: true)
  _$$CharacterStateLoadedCopyWith<_$CharacterStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
