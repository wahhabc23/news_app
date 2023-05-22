part of 'latest_bloc.dart';

@freezed
class LatestState with _$LatestState {
  const factory LatestState({
    required bool isLoading,
    required bool isError,
    required List<ArticleData> articlesList,
  }) = _LatestState;

  factory LatestState.initial() {
    return const LatestState(
        isLoading: false, isError: false, articlesList: []);
  }
}
