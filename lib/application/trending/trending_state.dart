part of 'trending_bloc.dart';

@freezed
class TrendingState with _$TrendingState {
  const factory TrendingState({
    required bool isLoading,
    required bool isError,
    required List<ArticleData> articlesList,
  }) = _TrendingState;
  factory TrendingState.initial() => const TrendingState(
        isLoading: false,
        isError: false,
        articlesList: [],
      );
}
