import 'package:flutter/material.dart';

class HeadlinePostWidget extends StatelessWidget {
  const HeadlinePostWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/antakya1.jpg",
          height: height * 1.2 / 5,
          width: width,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            "Antakya’da Bulunan Iphigenia Mozaiği Iphigenia Mozaiği Iphigenia Mozaiği",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            "Antakya’da Bulunan Iphigenia Mozaiği Antakya’da Bulunan Iphigenia Mozaiği xasdcsdvsdv",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Arkeoloji", style: Theme.of(context).textTheme.labelMedium),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("· 2s önce", style: Theme.of(context).textTheme.labelSmall),
            )
          ],
        )
      ],
    );
  }
}
