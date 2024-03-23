import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/features/common/screens/home/home.dart';
import 'package:flutter_tubes_galon/features/common/screens/chat/chat.dart';
import 'package:flutter_tubes_galon/features/common/screens/history/history.dart';
import 'package:flutter_tubes_galon/features/common/screens/order/order.dart';
import 'package:flutter_tubes_galon/features/common/screens/search/search.dart';
import 'package:flutter_tubes_galon/utils/constants/colors.dart';
import 'package:flutter_tubes_galon/utils/helpers/helper_functions.dart';

class MainMenu extends StatefulWidget {
  MainMenu({
    super.key,
  });

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currIndex = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          HomeScreen(),
          ChatScreen(),
          SearchScreen(),
          OrderScreen(),
          HistoryScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 20,
          backgroundColor: isDark ? AppColors.light : AppColors.dark,
          currentIndex: currIndex,
          unselectedItemColor: isDark ? AppColors.light : AppColors.dark,
          selectedItemColor: AppColors.primary,
          onTap: (page) {
            if (page != currIndex) {
              setState(() {
                currIndex = page;
                pageController.animateToPage(page,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic);
              });
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Obrolan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Cari",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "Pesanan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "Riwayat",
            )
          ],
        ),
    );
  }
}