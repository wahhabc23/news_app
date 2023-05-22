part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = _Started;
  const factory SearchEvent.searchNews({required String query}) = _SearchNews;
}
