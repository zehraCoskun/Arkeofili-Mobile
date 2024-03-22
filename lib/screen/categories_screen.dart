import 'package:arkeofili_mobile/data/dummy_data.dart';
import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:arkeofili_mobile/widget/category_card_widget.dart';
import 'package:arkeofili_mobile/widget/post_card_widget.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.postModel});
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryCard(categoryTitle: getCategoryString(postModel.category)),
        PostCardWidget(
          width: width,
          postModel: dummyData[0],
          isDate: true,
        ),
      ],
    );
  }
}
