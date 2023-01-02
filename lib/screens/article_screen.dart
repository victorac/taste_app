import 'package:flutter/material.dart';
import 'package:taste_app/widgets/article_item.dart';
import '../model/article.dart';

class ArticleScreen extends StatelessWidget {
  static const routeName = '/articles';

  const ArticleScreen({super.key, required this.availableArticles});

  final List<Article> availableArticles;

  @override
  Widget build(BuildContext context) {
    final categoryId = ModalRoute.of(context)!.settings.arguments;
    final categoryArticles = availableArticles
        .where(
          (element) => element.categories.contains(categoryId),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles'),
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
