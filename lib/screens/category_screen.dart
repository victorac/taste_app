import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../model/category.dart';
import '../model/article.dart';
import '../data/starter_data.dart';

class CategoryScreen extends StatelessWidget {
  static const routePath = '/category';
  const CategoryScreen({super.key, required this.availableArticles});

  final List<Article> availableArticles;
  final List<Object> _availableCategories = categoryStarterData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 7 / 5,
          crossAxisSpacing: 5,
          mainAxisSpacing: 8,
        ),
        itemCount: _availableCategories.length,
        itemBuilder: (context, index) {
          Category category = _availableCategories[index] as Category;
          return CategoryItem(
            category: category,
            tasteItems: availableArticles
                .where((element) => element.categories.contains(category.id))
                .toList(),
          );
        },
      ),
    );
  }
}
