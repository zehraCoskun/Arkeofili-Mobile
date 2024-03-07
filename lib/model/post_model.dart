import 'package:arkeofili_mobile/model/enum/category_enum.dart';

class PostModel {
  final String title;
  final String thumbnail;
  final String author;
  final String date;
  final String content;
  final String duration;

  final Categories category;
  final List<String>? tags;

  PostModel({
    required this.title,
    required this.thumbnail,
    required this.content,
    required this.author,
    required this.date,
    required this.duration,
    required this.category,
    this.tags,
  });
}
