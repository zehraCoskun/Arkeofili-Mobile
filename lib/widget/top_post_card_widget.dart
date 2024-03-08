import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:flutter/material.dart';

class TopPostCardWidget extends StatelessWidget {
  const TopPostCardWidget({
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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          postModel.thumbnail,
          width: height * 1 / 5,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(
            width: width * 9 / 20,
            child: Text(
              postModel.title,
              style: Theme.of(context).textTheme.titleMedium,
              overflow: TextOverflow.fade,
              maxLines: 3,
            ),
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
