part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required bool isLoading,
    required bool isError,
    required List<ArticleData> articlesList,
  }) = _CategoryState;
  factory CategoryState.initial() =>
      const CategoryState(isLoading: false, isError: false, articlesList: []);
}
