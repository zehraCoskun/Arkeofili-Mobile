import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:flutter/material.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    Key? key,
    required this.drawerItems,
  }) : super(key: key);

  final List<Categories> drawerItems;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(getCategoryRouteName(drawerItems[index]), arguments: drawerItems[index]);
            },
            title: Text(getCategoryString(drawerItems[index]), style: Theme.of(context).textTheme.bodyLarge),
          );
        },
      ),
    );
  }
}
// TODO : sadece kategori seçenekleri aktif, diğer sayfalar eklenecek