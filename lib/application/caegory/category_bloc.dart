import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/category/category_service.dart';
import 'package:news_app/domain/core/failures/failures.dart';
import 'package:news_app/domain/latest/models/news_a_pi_resp/latest_resp.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryServices _categoryServices;
  CategoryBloc(this._categoryServices) : super(CategoryState.initial()) {
    on<_GetCategoryNews>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      // get data
      final Either<MainFailure, NewsAPIResp> result =
          await _categoryServices.getCategory(category: event.category);
      final newState = result.fold(
        (l) => const CategoryState(
            isLoading: false, isError: true, articlesList: []),
        (r) => CategoryState(
            isLoading: false, isError: false, articlesList: r.articles),
      );
      emit(newState);
    });
  }
}
