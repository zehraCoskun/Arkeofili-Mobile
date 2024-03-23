import 'package:arkeofili_mobile/constant/image_const.dart';
import 'package:arkeofili_mobile/screen/drawer/main_drawer.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
    required this.body,
    required this.isAppBar,
    this.bottomNavigationBar,
    this.category,
  });
  final Widget body;
  final Widget? bottomNavigationBar;
  final bool isAppBar;
  final String? category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isAppBar
          ? AppBar(
              title: Image.asset(
                logoTitle,
                height: kToolbarHeight * 9 / 10,
              ),
            )
          : AppBar(title: Text(category!)),
      drawer: const MainDrawer(),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
