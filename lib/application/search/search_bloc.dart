

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/core/failures/failures.dart';
import 'package:news_app/domain/latest/models/news_a_pi_resp/latest_resp.dart';
import 'package:news_app/domain/search/search_services.dart';
import 'package:news_app/domain/trending/trending_services.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final TrendingServices _trendingServices;
  final SearchServices _searchServices;
  SearchBloc(this._searchServices, this._trendingServices)
      : super(SearchState.initial()) {
    on<_Started>((event, emit) async {
      if (state.articlesList.isNotEmpty) {
        emit(state);
        return;
      }
      emit(state.copyWith(isLoading: true, isError: false));
      // get data
      final Either<MainFailure, NewsAPIResp> result =
          await _trendingServices.getTrendingNews();
      final newState = result.fold(
        (l) => const SearchState(
            isLoading: false, isError: true, articlesList: [], searchList: []),
        (r) => SearchState(
            isLoading: false,
            isError: false,
            articlesList: r.articles,
            searchList: []),
      );
      emit(newState);
    });
    on<_SearchNews>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true));
      final Either<MainFailure, NewsAPIResp> result =
          await _searchServices.getNews(query: event.query);
      final newState = result.fold((l) {
        // log('failed');
        return const SearchState(
            isLoading: false, isError: true, articlesList: [], searchList: []);
      },
          (r) => SearchState(
              isLoading: false,
              isError: false,
              articlesList: [],
              searchList: r.articles));
      // log('final emitted');
      emit(newState);
    });
  }
}
