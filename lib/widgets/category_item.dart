import 'package:flutter/material.dart';

import './boxed_title.dart';
import '../screens/article_screen.dart';
import '../model/article.dart';
import '../model/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.category, required this.tasteItems});
  final Category category;
  final List<Article> tasteItems;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(ArticleScreen.routeName, arguments: {
        'title': category.title,
        'id': category.id,
      }),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: tasteItems.length,
              itemBuilder: (context, index) {
                return Image.network(
                  tasteItems[index].imageUrl,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  category.color.withOpacity(0.3),
                  category.color.withOpacity(0.7),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            alignment: Alignment.bottomLeft,
            child: BoxedTitle(title: category.title),
          ),
        ],
      ),
    );
  }
}
