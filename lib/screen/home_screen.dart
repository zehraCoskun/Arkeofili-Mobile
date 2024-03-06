import 'package:arkeofili_mobile/widget/backgrounda_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return BackgroundWidget(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
            child: Column(
          children: [
            HeadlinePostWidget(height: height),
            Column(
              children: [
                Image.asset(
                  "assets/images/antakya1.jpg",
                  height: height * 2 / 5,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}

class HeadlinePostWidget extends StatelessWidget {
  const HeadlinePostWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/antakya1.jpg",
          height: height * 2 / 5,
        ),
        Text(
          "Antakya’da Bulunan Iphigenia Mozaiği",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          "Antakya’da Bulunan Iphigenia Mozaiği Antakya’da Bulunan Iphigenia Mozaiği ",
          style: Theme.of(context).textTheme.bodyMedium,
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
