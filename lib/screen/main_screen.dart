import 'package:arkeofili_mobile/data/dummy_data.dart';
import 'package:arkeofili_mobile/screen/categories_screen.dart';
import 'package:arkeofili_mobile/screen/home_screen.dart';
import 'package:arkeofili_mobile/screen/popular_screen.dart';
import 'package:arkeofili_mobile/widget/backgrounda_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedScreen = 0;
  void setScreen(int index) {
    setState(() {
      selectedScreen = index;
    });
  }

  final List<Widget> screens = [const HomeScreen(), CategoriesScreen(postModel: dummyData[0]), PopularScreen(postModel: dummyData[1])];

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      isAppBar: true,
      body: screens[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).bottomAppBarTheme.surfaceTintColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: selectedScreen,
        onTap: setScreen,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Kategoriler"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper_outlined), label: "Taze Haberler"),
        ],
      ),
    );
  }
}
