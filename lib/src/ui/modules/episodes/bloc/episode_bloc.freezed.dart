// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EpisodeEvent {
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
    required TResult Function(EpisodeLoading value) loading,
    required TResult Function(EpisodeFailed value) failed,
    required TResult Function(EpisodeLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeLoading value)? loading,
    TResult? Function(EpisodeFailed value)? failed,
    TResult? Function(EpisodeLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeLoading value)? loading,
    TResult Function(EpisodeFailed value)? failed,
    TResult Function(EpisodeLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeEventCopyWith<$Res> {
  factory $EpisodeEventCopyWith(
          EpisodeEvent value, $Res Function(EpisodeEvent) then) =
      _$EpisodeEventCopyWithImpl<$Res, EpisodeEvent>;
}

/// @nodoc
class _$EpisodeEventCopyWithImpl<$Res, $Val extends EpisodeEvent>
    implements $EpisodeEventCopyWith<$Res> {
  _$EpisodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EpisodeLoadingCopyWith<$Res> {
  factory _$$EpisodeLoadingCopyWith(
          _$EpisodeLoading value, $Res Function(_$EpisodeLoading) then) =
      __$$EpisodeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeLoadingCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$EpisodeLoading>
    implements _$$EpisodeLoadingCopyWith<$Res> {
  __$$EpisodeLoadingCopyWithImpl(
      _$EpisodeLoading _value, $Res Function(_$EpisodeLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeLoading implements EpisodeLoading {
  _$EpisodeLoading();

  @override
  String toString() {
    return 'EpisodeEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeLoading);
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
    required TResult Function(EpisodeLoading value) loading,
    required TResult Function(EpisodeFailed value) failed,
    required TResult Function(EpisodeLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeLoading value)? loading,
    TResult? Function(EpisodeFailed value)? failed,
    TResult? Function(EpisodeLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeLoading value)? loading,
    TResult Function(EpisodeFailed value)? failed,
    TResult Function(EpisodeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EpisodeLoading implements EpisodeEvent {
  factory EpisodeLoading() = _$EpisodeLoading;
}

/// @nodoc
abstract class _$$EpisodeFailedCopyWith<$Res> {
  factory _$$EpisodeFailedCopyWith(
          _$EpisodeFailed value, $Res Function(_$EpisodeFailed) then) =
      __$$EpisodeFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeFailedCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$EpisodeFailed>
    implements _$$EpisodeFailedCopyWith<$Res> {
  __$$EpisodeFailedCopyWithImpl(
      _$EpisodeFailed _value, $Res Function(_$EpisodeFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeFailed implements EpisodeFailed {
  _$EpisodeFailed();

  @override
  String toString() {
    return 'EpisodeEvent.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeFailed);
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
    required TResult Function(EpisodeLoading value) loading,
    required TResult Function(EpisodeFailed value) failed,
    required TResult Function(EpisodeLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeLoading value)? loading,
    TResult? Function(EpisodeFailed value)? failed,
    TResult? Function(EpisodeLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeLoading value)? loading,
    TResult Function(EpisodeFailed value)? failed,
    TResult Function(EpisodeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class EpisodeFailed implements EpisodeEvent {
  factory EpisodeFailed() = _$EpisodeFailed;
}

/// @nodoc
abstract class _$$EpisodeLoadedCopyWith<$Res> {
  factory _$$EpisodeLoadedCopyWith(
          _$EpisodeLoaded value, $Res Function(_$EpisodeLoaded) then) =
      __$$EpisodeLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeLoadedCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$EpisodeLoaded>
    implements _$$EpisodeLoadedCopyWith<$Res> {
  __$$EpisodeLoadedCopyWithImpl(
      _$EpisodeLoaded _value, $Res Function(_$EpisodeLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeLoaded implements EpisodeLoaded {
  _$EpisodeLoaded();

  @override
  String toString() {
    return 'EpisodeEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeLoaded);
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
    required TResult Function(EpisodeLoading value) loading,
    required TResult Function(EpisodeFailed value) failed,
    required TResult Function(EpisodeLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeLoading value)? loading,
    TResult? Function(EpisodeFailed value)? failed,
    TResult? Function(EpisodeLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeLoading value)? loading,
    TResult Function(EpisodeFailed value)? failed,
    TResult Function(EpisodeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class EpisodeLoaded implements EpisodeEvent {
  factory EpisodeLoaded() = _$EpisodeLoaded;
}

/// @nodoc
mixin _$EpisodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<EpisodeModel> episodes) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<EpisodeModel> episodes)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<EpisodeModel> episodes)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateFailed value) failed,
    required TResult Function(EpisodeStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeStateLoading value)? loading,
    TResult? Function(EpisodeStateFailed value)? failed,
    TResult? Function(EpisodeStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateFailed value)? failed,
    TResult Function(EpisodeStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateCopyWith<$Res> {
  factory $EpisodeStateCopyWith(
          EpisodeState value, $Res Function(EpisodeState) then) =
      _$EpisodeStateCopyWithImpl<$Res, EpisodeState>;
}

/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res, $Val extends EpisodeState>
    implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EpisodeStateLoadingCopyWith<$Res> {
  factory _$$EpisodeStateLoadingCopyWith(_$EpisodeStateLoading value,
          $Res Function(_$EpisodeStateLoading) then) =
      __$$EpisodeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeStateLoadingCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateLoading>
    implements _$$EpisodeStateLoadingCopyWith<$Res> {
  __$$EpisodeStateLoadingCopyWithImpl(
      _$EpisodeStateLoading _value, $Res Function(_$EpisodeStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeStateLoading implements EpisodeStateLoading {
  _$EpisodeStateLoading();

  @override
  String toString() {
    return 'EpisodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<EpisodeModel> episodes) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<EpisodeModel> episodes)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<EpisodeModel> episodes)? loaded,
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
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateFailed value) failed,
    required TResult Function(EpisodeStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeStateLoading value)? loading,
    TResult? Function(EpisodeStateFailed value)? failed,
    TResult? Function(EpisodeStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateFailed value)? failed,
    TResult Function(EpisodeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EpisodeStateLoading implements EpisodeState {
  factory EpisodeStateLoading() = _$EpisodeStateLoading;
}

/// @nodoc
abstract class _$$EpisodeStateFailedCopyWith<$Res> {
  factory _$$EpisodeStateFailedCopyWith(_$EpisodeStateFailed value,
          $Res Function(_$EpisodeStateFailed) then) =
      __$$EpisodeStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeStateFailedCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateFailed>
    implements _$$EpisodeStateFailedCopyWith<$Res> {
  __$$EpisodeStateFailedCopyWithImpl(
      _$EpisodeStateFailed _value, $Res Function(_$EpisodeStateFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeStateFailed implements EpisodeStateFailed {
  _$EpisodeStateFailed();

  @override
  String toString() {
    return 'EpisodeState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<EpisodeModel> episodes) loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<EpisodeModel> episodes)? loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<EpisodeModel> episodes)? loaded,
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
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateFailed value) failed,
    required TResult Function(EpisodeStateLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeStateLoading value)? loading,
    TResult? Function(EpisodeStateFailed value)? failed,
    TResult? Function(EpisodeStateLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateFailed value)? failed,
    TResult Function(EpisodeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class EpisodeStateFailed implements EpisodeState {
  factory EpisodeStateFailed() = _$EpisodeStateFailed;
}

/// @nodoc
abstract class _$$EpisodeStateLoadedCopyWith<$Res> {
  factory _$$EpisodeStateLoadedCopyWith(_$EpisodeStateLoaded value,
          $Res Function(_$EpisodeStateLoaded) then) =
      __$$EpisodeStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EpisodeModel> episodes});
}

/// @nodoc
class __$$EpisodeStateLoadedCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateLoaded>
    implements _$$EpisodeStateLoadedCopyWith<$Res> {
  __$$EpisodeStateLoadedCopyWithImpl(
      _$EpisodeStateLoaded _value, $Res Function(_$EpisodeStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodes = null,
  }) {
    return _then(_$EpisodeStateLoaded(
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModel>,
    ));
  }
}

/// @nodoc

class _$EpisodeStateLoaded implements EpisodeStateLoaded {
  _$EpisodeStateLoaded({required final List<EpisodeModel> episodes})
      : _episodes = episodes;

  final List<EpisodeModel> _episodes;
  @override
  List<EpisodeModel> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  String toString() {
    return 'EpisodeState.loaded(episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeStateLoaded &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_episodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeStateLoadedCopyWith<_$EpisodeStateLoaded> get copyWith =>
      __$$EpisodeStateLoadedCopyWithImpl<_$EpisodeStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<EpisodeModel> episodes) loaded,
  }) {
    return loaded(episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<EpisodeModel> episodes)? loaded,
  }) {
    return loaded?.call(episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<EpisodeModel> episodes)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(episodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateFailed value) failed,
    required TResult Function(EpisodeStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeStateLoading value)? loading,
    TResult? Function(EpisodeStateFailed value)? failed,
    TResult? Function(EpisodeStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateFailed value)? failed,
    TResult Function(EpisodeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class EpisodeStateLoaded implements EpisodeState {
  factory EpisodeStateLoaded({required final List<EpisodeModel> episodes}) =
      _$EpisodeStateLoaded;

  List<EpisodeModel> get episodes;
  @JsonKey(ignore: true)
  _$$EpisodeStateLoadedCopyWith<_$EpisodeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
