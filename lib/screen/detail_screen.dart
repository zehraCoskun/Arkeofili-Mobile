import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:arkeofili_mobile/widget/backgrounda_widget.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.postModel});
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      isAppBar: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(postModel.thumbnail),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(getCategoryString(postModel.category), style: Theme.of(context).textTheme.labelLarge),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("· ${postModel.duration} okuma süresi", style: Theme.of(context).textTheme.labelSmall),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                postModel.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                postModel.content,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    postModel.author,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    _formatDate(postModel.releaseDate),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      category: getCategoryString(postModel.category),
    );
  }
}

String _formatDate(DateTime date) {
  return "${date.day}/${date.month}/${date.year}";
}
