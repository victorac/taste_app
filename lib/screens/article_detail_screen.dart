import 'package:flutter/material.dart';
import 'package:taste_app/widgets/boxed_title.dart';

import '../model/article.dart';

class ArticleDetailScreen extends StatelessWidget {
  static const routeName = '/item-detail';

  const ArticleDetailScreen({
    super.key,
    required this.isFavorite,
    required this.toggleFavorite,
  });

  final Function isFavorite;
  final Function toggleFavorite;

  @override
  Widget build(BuildContext context) {
    final Article article =
        ModalRoute.of(context)!.settings.arguments as Article;
    return SelectionArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(article.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(article.imageUrl),
              const SizedBox(
                height: 20,
              ),
              Text(article.description),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 5,
                runSpacing: 10,
                children: article.tags
                    .map((e) => BoxedTitle(
                          title: e,
                          fontSize: 16,
                        ))
                    .toList(),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => toggleFavorite(article.id),
          child: Icon(
            isFavorite(article.id) ? Icons.favorite : Icons.favorite_border,
          ),
        ),
      ),
    );
  }
}
