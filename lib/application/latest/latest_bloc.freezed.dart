// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LatestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestEventCopyWith<$Res> {
  factory $LatestEventCopyWith(
          LatestEvent value, $Res Function(LatestEvent) then) =
      _$LatestEventCopyWithImpl<$Res, LatestEvent>;
}

/// @nodoc
class _$LatestEventCopyWithImpl<$Res, $Val extends LatestEvent>
    implements $LatestEventCopyWith<$Res> {
  _$LatestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$LatestEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LatestEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LatestEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$LatestState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<ArticleData> get articlesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LatestStateCopyWith<LatestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestStateCopyWith<$Res> {
  factory $LatestStateCopyWith(
          LatestState value, $Res Function(LatestState) then) =
      _$LatestStateCopyWithImpl<$Res, LatestState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<ArticleData> articlesList});
}

/// @nodoc
class _$LatestStateCopyWithImpl<$Res, $Val extends LatestState>
    implements $LatestStateCopyWith<$Res> {
  _$LatestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? articlesList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      articlesList: null == articlesList
          ? _value.articlesList
          : articlesList // ignore: cast_nullable_to_non_nullable
              as List<ArticleData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LatestStateCopyWith<$Res>
    implements $LatestStateCopyWith<$Res> {
  factory _$$_LatestStateCopyWith(
          _$_LatestState value, $Res Function(_$_LatestState) then) =
      __$$_LatestStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<ArticleData> articlesList});
}

/// @nodoc
class __$$_LatestStateCopyWithImpl<$Res>
    extends _$LatestStateCopyWithImpl<$Res, _$_LatestState>
    implements _$$_LatestStateCopyWith<$Res> {
  __$$_LatestStateCopyWithImpl(
      _$_LatestState _value, $Res Function(_$_LatestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? articlesList = null,
  }) {
    return _then(_$_LatestState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      articlesList: null == articlesList
          ? _value._articlesList
          : articlesList // ignore: cast_nullable_to_non_nullable
              as List<ArticleData>,
    ));
  }
}

/// @nodoc

class _$_LatestState implements _LatestState {
  const _$_LatestState(
      {required this.isLoading,
      required this.isError,
      required final List<ArticleData> articlesList})
      : _articlesList = articlesList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<ArticleData> _articlesList;
  @override
  List<ArticleData> get articlesList {
    if (_articlesList is EqualUnmodifiableListView) return _articlesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articlesList);
  }

  @override
  String toString() {
    return 'LatestState(isLoading: $isLoading, isError: $isError, articlesList: $articlesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatestState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._articlesList, _articlesList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_articlesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LatestStateCopyWith<_$_LatestState> get copyWith =>
      __$$_LatestStateCopyWithImpl<_$_LatestState>(this, _$identity);
}

abstract class _LatestState implements LatestState {
  const factory _LatestState(
      {required final bool isLoading,
      required final bool isError,
      required final List<ArticleData> articlesList}) = _$_LatestState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<ArticleData> get articlesList;
  @override
  @JsonKey(ignore: true)
  _$$_LatestStateCopyWith<_$_LatestState> get copyWith =>
      throw _privateConstructorUsedError;
}
