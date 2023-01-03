import 'package:flutter/material.dart';
import 'package:taste_app/widgets/article_item.dart';
import '../model/article.dart';

class ArticleScreen extends StatelessWidget {
  static const routeName = '/articles';

  const ArticleScreen({super.key, required this.availableArticles});

  final List<Article> availableArticles;

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryArticles = availableArticles
        .where(
          (element) => element.categories.contains(categoryId),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryTitle'),
      ),
      body: ListView.builder(
        itemCount: categoryArticles.length,
        itemBuilder: (context, index) {
          return ArticleItem(article: categoryArticles[index]);
        },
      ),
    );
  }
}
