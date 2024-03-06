import 'package:arkeofili_mobile/widget/backgrounda_widget.dart';
import 'package:arkeofili_mobile/widget/headline_post_widget.dart';
import 'package:arkeofili_mobile/widget/post_card_widget.dart';
import 'package:arkeofili_mobile/widget/top_posts_row_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return BackgroundWidget(
      body: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8, top: 12),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeadlinePostWidget(height: height, width: width),
            TopPostsRowWidget(height: height, width: width),
            PostCardWidget(width: width),
            PostCardWidget(width: width),
            PostCardWidget(width: width),
            PostCardWidget(width: width),
            PostCardWidget(width: width),
            PostCardWidget(width: width),
            PostCardWidget(width: width),
            PostCardWidget(width: width),
          ],
        )),
      ),
    );
  }
}
