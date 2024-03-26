import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/widget/category_card_widget.dart';
import 'package:arkeofili_mobile/widget/post_card_widget.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return ListView(
      children: categorizedPosts.entries.map((entry) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryCard(categoryTitle: getCategoryString(entry.key)),
            ListView.builder(
              shrinkWrap: true,
              // listView içinde tekrardan ekran kaydı olmaması için eklendi
              physics: const NeverScrollableScrollPhysics(),
              itemCount: entry.value.length,
              itemBuilder: (context, index) {
                return PostCardWidget(
                  width: width,
                  postModel: entry.value[index],
                  isDate: true,
                );
              },
            ),
          ],
        );
      }).toList(),
    );
  }
}
