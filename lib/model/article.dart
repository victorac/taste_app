import 'package:taste_app/model/article_property.dart';

class Article {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final List<String> tags;
  final Map<String, ArticleProperty> summaryProperties;
  final List<String> categories;

  const Article({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.summaryProperties,
    required this.tags,
    required this.categories,
  });
}
