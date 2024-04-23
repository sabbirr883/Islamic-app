import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halakat/const/app_colors.dart';
import 'package:halakat/ui/pages/memorizes_pages.dart';
import 'package:halakat/ui/pages/read_page.dart';
import 'package:halakat/ui/pages/recity_page.dart';
import 'package:halakat/ui/pages/retain_page.dart';
import 'package:halakat/ui/pages/save_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  RxInt _currentIndex = 0.obs;
  final pages = [
    ReadPage(),
    MemorizesPage(),
    RecityPage(),
    RetainPage(),
    SavePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: SalomonBottomBar(
         selectedItemColor: AppColors.greenColor,

          currentIndex: _currentIndex.value,
          onTap: (val) {
            _currentIndex.value = val;
          },
          items: [
            bottomBarItem('images/book.png', 'READ'),
            bottomBarItem('images/idea.png', 'MEMORIZE'),
            bottomBarItem('images/praying.png', 'RECITE'),
            bottomBarItem('images/dua-hands.png', 'RETAIN'),
            bottomBarItem('images/save-instagram.png', 'Save'),
          ],
        ),
        body: pages[_currentIndex.value],
      ),
    );
  }
}

SalomonBottomBarItem bottomBarItem(icon, title) => SalomonBottomBarItem(
    icon: Image.asset(
      icon,
      height: 25,
      width: 25,
      color: AppColors.greenColor,
    ),
    title: Text(title));
