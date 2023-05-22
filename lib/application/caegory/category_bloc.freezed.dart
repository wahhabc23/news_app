// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  String get category => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getCategoryNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getCategoryNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getCategoryNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoryNews value) getCategoryNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryNews value)? getCategoryNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryNews value)? getCategoryNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryEventCopyWith<CategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetCategoryNewsCopyWith<$Res>
    implements $CategoryEventCopyWith<$Res> {
  factory _$$_GetCategoryNewsCopyWith(
          _$_GetCategoryNews value, $Res Function(_$_GetCategoryNews) then) =
      __$$_GetCategoryNewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$_GetCategoryNewsCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_GetCategoryNews>
    implements _$$_GetCategoryNewsCopyWith<$Res> {
  __$$_GetCategoryNewsCopyWithImpl(
      _$_GetCategoryNews _value, $Res Function(_$_GetCategoryNews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_GetCategoryNews(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCategoryNews implements _GetCategoryNews {
  const _$_GetCategoryNews({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'CategoryEvent.getCategoryNews(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCategoryNews &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCategoryNewsCopyWith<_$_GetCategoryNews> get copyWith =>
      __$$_GetCategoryNewsCopyWithImpl<_$_GetCategoryNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getCategoryNews,
  }) {
    return getCategoryNews(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getCategoryNews,
  }) {
    return getCategoryNews?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getCategoryNews,
    required TResult orElse(),
  }) {
    if (getCategoryNews != null) {
      return getCategoryNews(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoryNews value) getCategoryNews,
  }) {
    return getCategoryNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryNews value)? getCategoryNews,
  }) {
    return getCategoryNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryNews value)? getCategoryNews,
    required TResult orElse(),
  }) {
    if (getCategoryNews != null) {
      return getCategoryNews(this);
    }
    return orElse();
  }
}

abstract class _GetCategoryNews implements CategoryEvent {
  const factory _GetCategoryNews({required final String category}) =
      _$_GetCategoryNews;

  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_GetCategoryNewsCopyWith<_$_GetCategoryNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<ArticleData> get articlesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<ArticleData> articlesList});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_CategoryStateCopyWith(
          _$_CategoryState value, $Res Function(_$_CategoryState) then) =
      __$$_CategoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<ArticleData> articlesList});
}

/// @nodoc
class __$$_CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_CategoryState>
    implements _$$_CategoryStateCopyWith<$Res> {
  __$$_CategoryStateCopyWithImpl(
      _$_CategoryState _value, $Res Function(_$_CategoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? articlesList = null,
  }) {
    return _then(_$_CategoryState(
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

class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
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
    return 'CategoryState(isLoading: $isLoading, isError: $isError, articlesList: $articlesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryState &&
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
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      __$$_CategoryStateCopyWithImpl<_$_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final bool isLoading,
      required final bool isError,
      required final List<ArticleData> articlesList}) = _$_CategoryState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<ArticleData> get articlesList;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
