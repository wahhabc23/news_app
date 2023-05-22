import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/core/failures/failures.dart';
import 'package:news_app/domain/latest/models/news_a_pi_resp/latest_resp.dart';
import 'package:news_app/domain/trending/trending_services.dart';

part 'trending_event.dart';
part 'trending_state.dart';
part 'trending_bloc.freezed.dart';

@injectable
class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  final TrendingServices _trendingServices;
  TrendingBloc(this._trendingServices) : super(TrendingState.initial()) {
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
        (l) => const TrendingState(
            isLoading: false, isError: true, articlesList: []),
        (r) => TrendingState(
            isLoading: false, isError: false, articlesList: r.articles),
      );
      emit(newState);
    });
  }
}
