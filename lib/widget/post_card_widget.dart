import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:flutter/material.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({
    super.key,
    required this.width,
    required this.postModel,
  });

  final double width;
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                postModel.thumbnail,
                width: width * 2 / 6,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: width * 3.4 / 6,
                        child: Text(
                          postModel.title,
                          style: Theme.of(context).textTheme.titleSmall,
                          maxLines: 3,
                          overflow: TextOverflow.clip,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
                      child: Row(
                        children: [
                          Text(getCategoryString(postModel.category), style: Theme.of(context).textTheme.labelMedium),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child:
                                Text("· ${postModel.duration}", style: Theme.of(context).textTheme.labelSmall), //buraya tarih gelse daha iyi olabilir
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
