// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/colors.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

ValueNotifier<int> bottonNavBarNotifier = ValueNotifier(0);

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottonNavBarNotifier,
      builder: (BuildContext context, int value, Widget? _) {
        return StylishBottomBar(
          onTap: (newValue) {
            bottonNavBarNotifier.value = newValue;
            // print('tapped');
          },
          currentIndex: value,
          backgroundColor: primaryLayerColor,
          option: BubbleBarOptions(
            bubbleFillStyle: BubbleFillStyle.fill,
            opacity: 0.6,
            barStyle: BubbleBarStyle.vertical,
            // unselectedIconColor: Colors.blueGrey,
          ),
          
          items: [
            bottom_bar_items(icon: CupertinoIcons.news, title: 'Latest'),
            bottom_bar_items(
                icon: CupertinoIcons.flame, title: 'Trending'),
            bottom_bar_items(icon: CupertinoIcons.search, title: 'Search'),
            bottom_bar_items(
                icon: CupertinoIcons.rectangle_stack, title: 'Category'),
          ],
        );
      },
    );
  }
}

BottomBarItem bottom_bar_items(
    {required IconData icon, required String title}) {
  const color = Colors.blue;
  return BottomBarItem(
      icon: Icon(
        icon,
        color: color,
      ),
      title: Text(
        title,
        style: const TextStyle(color: color),
      ),
      backgroundColor: Colors.blue[200]);
}

/*

BottomNavigationBar(
        backgroundColor: Colors.blue[50],
        selectedItemColor: const Color.fromARGB(255, 41, 98, 255),
        unselectedItemColor: Colors.blueGrey,
        selectedIconTheme: IconThemeData(shadows: [Shadow(color: Colors.blue)]),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.news,
            ),
            label: 'Latest',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.flame),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.list_bullet), label: 'Source'),
        ],
      ),
 */
