part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getCategoryNews({
    required String category,
  }) = _GetCategoryNews;
  
}