import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.postModel});
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Image.asset(
          postModel.thumbnail,
          width: height * 1 / 5,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            Text(
              postModel.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              DateFormat.yMd().format(postModel.releaseDate),
            )
          ],
        )
      ],
    );
  }
}
