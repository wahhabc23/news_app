import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/application/caegory/category_bloc.dart';
import 'package:news_app/application/latest/latest_bloc.dart';
import 'package:news_app/application/search/search_bloc.dart';
import 'package:news_app/application/trending/trending_bloc.dart';
import 'package:news_app/core/colors.dart';
import 'package:news_app/domain/core/di/injectable.dart';
import 'package:news_app/presentation/main_page/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<LatestBloc>()),
        BlocProvider(create: (context) => getIt<TrendingBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<CategoryBloc>()),
      ],
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: primaryBGColor),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
