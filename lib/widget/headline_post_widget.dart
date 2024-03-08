import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:flutter/material.dart';

class HeadlinePostWidget extends StatelessWidget {
  const HeadlinePostWidget({
    super.key,
    required this.height,
    required this.width,
    required this.postModel,
  });

  final double height;
  final double width;
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          postModel.thumbnail,
          height: height * 1.2 / 5,
          width: width,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            postModel.title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            postModel.content,
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(getCategoryString(postModel.category), style: Theme.of(context).textTheme.labelMedium),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("· ${postModel.duration}", style: Theme.of(context).textTheme.labelSmall),
            )
          ],
        )
      ],
    );
  }
}
