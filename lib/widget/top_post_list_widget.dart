import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:arkeofili_mobile/widget/top_post_card_widget.dart';
import 'package:flutter/material.dart';

class TopPostListWidget extends StatelessWidget {
  const TopPostListWidget({
    super.key,
    required this.height,
    required this.width,
    required this.postList,
  });

  final double height;
  final double width;
  final List<PostModel> postList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: AspectRatio(
        aspectRatio: 16 / 10,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: false,
          itemCount: postList.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: TopPostCardWidget(
                height: height,
                width: width,
                postModel: postList[index],
              ),
              onTap: () => Navigator.of(context).pushNamed("/detail", arguments: postList[index]),
            );
          },
        ),
      ),
    );
  }
}
