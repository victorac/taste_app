import 'package:flutter/material.dart';
import 'package:taste_app/model/article_property.dart';

import './boxed_title.dart';
import '../model/article.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    final properties = article.summaryProperties.values.toList();
    return InkWell(
      onTap: () {},
      child: Card(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: properties
                    .map((property) => Row(children: [
                          Icon(property.icon),
                          Text('${property.value}'),
                        ]))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
