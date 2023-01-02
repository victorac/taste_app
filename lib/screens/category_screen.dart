import 'package:flutter/material.dart';
import 'package:taste_app/screens/items_screen.dart';
import 'package:taste_app/widgets/category_item.dart';

import '../model/category.dart';
import '../model/taste_item.dart';
import '../data/starter_data.dart';

class CategoryScreen extends StatelessWidget {
  static const routePath = '/category';
  const CategoryScreen({super.key, required this.availableItems});

  final List<TasteItem> availableItems;
  final List<Object> _availableCategories = categoryStarterData;

  @override
  Widget build(BuildContext context) {
    print(availableItems);
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories', style: Theme.of(context).textTheme.headline6),
      ),
      body: Padding(
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
              tasteItems: availableItems
                  .where((element) => element.categories.contains(category.id))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
