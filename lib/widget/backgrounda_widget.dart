import 'package:arkeofili_mobile/constant/image_const.dart';
import 'package:arkeofili_mobile/screen/drawer/main_drawer.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Image.asset(
          logoTitle,
          height: kToolbarHeight * 9 / 10,
        ),
      ),
      drawer: const MainDrawer(),
    );
  }
}
