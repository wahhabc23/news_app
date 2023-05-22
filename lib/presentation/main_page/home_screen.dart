import 'package:flutter/material.dart';
import 'package:news_app/presentation/latest/latest_screen.dart';
import 'package:news_app/presentation/main_page/widget/bottom_nav.dart';
import 'package:news_app/presentation/search/search_screen.dart';
import 'package:news_app/presentation/category/category_screen.dart';
import 'package:news_app/presentation/trending/trending_screen.dart';

const _pages = [
  LatestScreen(),
  TrendingScreen(),
  SearchScreen(),
  CategoryScreen()
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: bottonNavBarNotifier,
          builder: (BuildContext context, int value, Widget? child) {
            return _pages[value];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
