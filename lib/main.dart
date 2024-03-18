import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tubes_galon/pages/chat_page.dart';
import 'package:flutter_tubes_galon/pages/history_page.dart';
import 'package:flutter_tubes_galon/pages/home_page.dart';
import 'package:flutter_tubes_galon/pages/order_page.dart';
import 'package:flutter_tubes_galon/pages/search_page.dart';
import 'package:flutter_tubes_galon/theme.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currIndex = 0;

  PageController pageController = PageController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: PageView(
          controller: pageController,
          children: [
            HomePage(),
            ChatPage(),
            SearchPage(),
            OrderPage(),
            HistoryPage()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        backgroundColor: Colors.black,
        currentIndex: currIndex,

        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.black,
        onTap: (page) {
          if (page != currIndex) {
            setState(() {
              currIndex = page;
              pageController.animateToPage(page, duration: Duration(milliseconds: 500), curve: Curves.easeInOutCubic);
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
      ),
      
      
    );
  }
}

