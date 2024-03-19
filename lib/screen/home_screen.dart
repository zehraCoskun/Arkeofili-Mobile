import 'package:arkeofili_mobile/data/dummy_data.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:arkeofili_mobile/widget/backgrounda_widget.dart';
import 'package:arkeofili_mobile/widget/headline_post_widget.dart';
import 'package:arkeofili_mobile/widget/post_card_widget.dart';
import 'package:arkeofili_mobile/widget/top_post_list_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final List<PostModel> topPostList = dummyData.where((element) => element.isTop).toList();

    return BackgroundWidget(
      isAppBar: false,
      body: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8, top: 12),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeadlinePostWidget(
              height: height,
              width: width,
              postModel: topPostList[1],
            ),
            TopPostListWidget(
              height: height,
              width: width,
              postList: topPostList,
            ),
            PostCardWidget(
              width: width,
              postModel: dummyData[0],
            ),
            PostCardWidget(
              width: width,
              postModel: dummyData[1],
            ),
            PostCardWidget(
              width: width,
              postModel: dummyData[2],
            ),
            PostCardWidget(
              width: width,
              postModel: dummyData[3],
            ),
          ],
        )),
      ),
    );
  }
}
