import 'package:arkeofili_mobile/model/category_items.dart';

class PostModel {
  final String id;
  final String title;
  final String thumbnail;
  final String author;
  final String date;
  final String content;

  final Categories category;
  final List<String>? tags;

  PostModel({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.content,
    required this.author,
    required this.date,

    required this.category,
    this.tags,
  });
}
