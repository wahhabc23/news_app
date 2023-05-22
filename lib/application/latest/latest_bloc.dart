import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/domain/core/failures/failures.dart';
import 'package:news_app/domain/latest/models/latest_services.dart';
import 'package:news_app/domain/latest/models/news_a_pi_resp/latest_resp.dart';
import 'package:injectable/injectable.dart';

part 'latest_event.dart';
part 'latest_state.dart';
part 'latest_bloc.freezed.dart';

@injectable
class LatestBloc extends Bloc<LatestEvent, LatestState> {
  final LatestServices _latestServices;
  LatestBloc(this._latestServices) : super(LatestState.initial()) {
    on<_Started>((event, emit) async {
      if (state.articlesList.isNotEmpty) {
        emit(state);
        return;
      }
      emit(state.copyWith(isLoading: true, isError: false));
      // get data
      final Either<MainFailure, NewsAPIResp> result =
          await _latestServices.getLatestNews();
      final newState = result.fold(
        (l) => const LatestState(
            isLoading: false, isError: true, articlesList: []),
        (r) => LatestState(
            isLoading: false, isError: false, articlesList: r.articles),
      );
      emit(newState);
    });
  }
}
