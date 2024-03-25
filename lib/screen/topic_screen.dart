import 'package:arkeofili_mobile/data/dummy_data.dart';
import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:arkeofili_mobile/widget/backgrounda_widget.dart';
import 'package:arkeofili_mobile/widget/post_card_widget.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key, required this.categories});
  final Categories categories;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final List<PostModel> posts = dummyData.where((element) => element.category == categories).toList();

    return BackgroundWidget(
      body: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return PostCardWidget(
                width: width,
                postModel: posts[index],
                isDate: true,
              );
            }),
      ),
      isAppBar: false,
      category: getCategoryString(categories),
    );
  }
}
