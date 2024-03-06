import 'package:flutter/material.dart';

class TopPostCardWidget extends StatelessWidget {
  const TopPostCardWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/antakya1.jpg",
          width: height * 1 / 5,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(
            width: width * 9 / 20,
            child: Text(
              "Kilis’te Bulunan Aidesim Mozaikli Bazilikası",
              style: Theme.of(context).textTheme.titleMedium,
              overflow: TextOverflow.fade,
              maxLines: 3,
            ),
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
