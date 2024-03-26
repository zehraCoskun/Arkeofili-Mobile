import 'dart:math';
import 'package:arkeofili_mobile/data/dummy_data.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
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
    var random = Random();
    final headlinePostIndex = random.nextInt(topPostList.length);
    final selectedHeadlinePost = topPostList.removeAt(headlinePostIndex);

    return Material(
      //inkwell'i ekleyince gelen hata yönlendirmesiyle bunu yaptım ama neden gerek olduğunu araştırmalıyım
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8, top: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                child: HeadlinePostWidget(
                  height: height,
                  width: width,
                  postModel: selectedHeadlinePost,
                ),
                onTap: () => Navigator.of(context).pushNamed("/detail", arguments: selectedHeadlinePost),
              ),
              TopPostListWidget(
                height: height,
                width: width,
                postList: topPostList,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dummyData.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: PostCardWidget(width: width, postModel: dummyData[index], isDate: false),
                    onTap: () => Navigator.of(context).pushNamed("/detail", arguments: dummyData[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
