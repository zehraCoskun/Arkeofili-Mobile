import 'package:arkeofili_mobile/screen/categories_screen.dart';
import 'package:arkeofili_mobile/screen/home_screen.dart';
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

  final List<Widget> screens = const [
    HomeScreen(),
    CategoriesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      isAppBar: true,
      body: screens[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).bottomAppBarTheme.color, 
        selectedItemColor: Theme.of(context).bottomAppBarTheme.surfaceTintColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: selectedScreen,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        onTap: setScreen,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Kategoriler"),
        ],
      ),
    );
  }
}
