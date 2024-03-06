import 'package:flutter/material.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({
    super.key,
    required this.width,
  });

  final double width;

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
                "assets/images/antakya1.jpg",
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
                          "Antakya’da Bulunan xxssssa Iphigenia Mozaiği Antakya’da Bulunan xxssssa Iphigenia Mozaiği Antakya’da Bulunan xxssssa Iphigenia Mozaiği",
                          style: Theme.of(context).textTheme.titleSmall,
                          maxLines: 3,
                          overflow: TextOverflow.clip,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
                      child: Row(
                        children: [
                          Text("Arkeoloji", style: Theme.of(context).textTheme.labelMedium),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("· 2s önce", style: Theme.of(context).textTheme.labelSmall),
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