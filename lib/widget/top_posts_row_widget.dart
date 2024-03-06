import 'package:arkeofili_mobile/widget/top_post_card_widget.dart';
import 'package:flutter/material.dart';

class TopPostsRowWidget extends StatelessWidget {
  const TopPostsRowWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopPostCardWidget(height: height, width: width),
          TopPostCardWidget(height: height, width: width),
        ],
      ),
    );
  }
}