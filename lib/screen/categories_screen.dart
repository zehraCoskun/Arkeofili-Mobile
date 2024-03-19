import 'package:arkeofili_mobile/data/dummy_data.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:arkeofili_mobile/widget/post_card_widget.dart';
import 'package:flutter/material.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.postModel});
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return PostCardWidget(width: width, postModel: dummyData[0],);
  }
}
