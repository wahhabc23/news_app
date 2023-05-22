// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:news_app/application/caegory/category_bloc.dart' as _i11;
import 'package:news_app/application/latest/latest_bloc.dart' as _i12;
import 'package:news_app/application/search/search_bloc.dart' as _i13;
import 'package:news_app/application/trending/trending_bloc.dart' as _i14;
import 'package:news_app/domain/category/category_service.dart' as _i3;
import 'package:news_app/domain/latest/models/latest_services.dart' as _i5;
import 'package:news_app/domain/search/search_services.dart' as _i7;
import 'package:news_app/domain/trending/trending_services.dart' as _i9;
import 'package:news_app/infrastructure/category/category_fun.dart' as _i4;
import 'package:news_app/infrastructure/latest/latest_fun.dart' as _i6;
import 'package:news_app/infrastructure/search/search_fun.dart' as _i8;
import 'package:news_app/infrastructure/trending/trending_fun.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CategoryServices>(() => _i4.CategoryFunctions());
    gh.lazySingleton<_i5.LatestServices>(() => _i6.LatestRepository());
    gh.lazySingleton<_i7.SearchServices>(() => _i8.SearchFunctions());
    gh.lazySingleton<_i9.TrendingServices>(() => _i10.TrendingFunctions());
    gh.factory<_i11.CategoryBloc>(
        () => _i11.CategoryBloc(gh<_i3.CategoryServices>()));
    gh.factory<_i12.LatestBloc>(
        () => _i12.LatestBloc(gh<_i5.LatestServices>()));
    gh.factory<_i13.SearchBloc>(() => _i13.SearchBloc(
          gh<_i7.SearchServices>(),
          gh<_i9.TrendingServices>(),
        ));
    gh.factory<_i14.TrendingBloc>(
        () => _i14.TrendingBloc(gh<_i9.TrendingServices>()));
    return this;
  }
}
