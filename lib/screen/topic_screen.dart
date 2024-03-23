import 'package:arkeofili_mobile/data/dummy_data.dart';
import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/widget/backgrounda_widget.dart';
import 'package:arkeofili_mobile/widget/post_card_widget.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key, required this.categories});
  final Categories categories;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return BackgroundWidget(
      body: PostCardWidget(width: width, postModel: dummyData[0], isDate: false),
      isAppBar: false,
      category: getCategoryString(categories),
    );
  }
}
