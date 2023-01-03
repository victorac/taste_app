import 'package:flutter/material.dart';

import '../widgets/filter_drawer.dart';
import '../widgets/article_item.dart';
import '../model/article.dart';

class ArticleScreen extends StatelessWidget {
  static const routeName = '/articles';

  const ArticleScreen({
    super.key,
    required this.availableArticles,
    required this.tags,
    required this.filteredTags,
    required this.toggleFilterTag,
  });

  final List<Article> availableArticles;
  final Set<String> tags;
  final Set<String> filteredTags;
  final Function toggleFilterTag;

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
      endDrawer: FilterDrawer(
        tags: tags,
        filteredTags: filteredTags,
        toggleFilterTag: toggleFilterTag,
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
