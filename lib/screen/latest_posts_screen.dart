import 'package:arkeofili_mobile/constant/screens_const.dart';
import 'package:arkeofili_mobile/data/dummy_data.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:arkeofili_mobile/widget/post_card_widget.dart';
import 'package:flutter/material.dart';

class LatestPostsScreen extends StatelessWidget {
  const LatestPostsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    dummyData.sort((a, b) => b.releaseDate.compareTo(a.releaseDate));
    List<PostModel> latestPosts = dummyData.take(5).toList();

    final double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            mainScreenTab3,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        AspectRatio(
          aspectRatio: 1 / 1.5,
          child: ListView.builder(
              itemCount: latestPosts.length,
              itemBuilder: (context, index) {
                return PostCardWidget(
                  width: width,
                  postModel: latestPosts[index],
                  isDate: true,
                );
              }),
        )
      ],
    );
  }
}
