import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/screen/drawer/drawer_body.dart';
import 'package:arkeofili_mobile/screen/drawer/drawer_footer.dart';
import 'package:arkeofili_mobile/screen/drawer/drawer_title.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerTitle(),
          DrawerBody(drawerItems: Categories.values),
          Divider(thickness: 3.0),
          DrawerFooter(),
        ],
      ),
    );
  }
}
