part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool isError,
    required List<ArticleData> articlesList,
    required List<ArticleData> searchList,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        isLoading: false,
        isError: false,
        articlesList: [],
        searchList: [],
      );
}
