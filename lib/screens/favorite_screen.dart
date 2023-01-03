import 'package:flutter/material.dart';

import '../widgets/article_item.dart';
import '../model/article.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key, required this.favoriteArticles});

  final List<Article> favoriteArticles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoriteArticles.length,
      itemBuilder: (context, index) {
        return ArticleItem(article: favoriteArticles[index]);
      },
    );
  }
}
