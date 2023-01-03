import 'package:flutter/material.dart';
import 'package:taste_app/screens/article_detail_screen.dart';

import './boxed_title.dart';
import '../model/article.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    final properties = article.summaryProperties.values.toList();
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ArticleDetailScreen.routeName, arguments: article);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(5),
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    article.imageUrl,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: BoxedTitle(
                    title: article.title,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 25,
                runSpacing: 4,
                direction: Axis.horizontal,
                children: properties
                    .map((property) => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(property.icon),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '${property.value}',
                            ),
                          ],
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
