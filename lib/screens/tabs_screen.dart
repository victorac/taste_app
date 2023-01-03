import 'package:flutter/material.dart';

import './category_screen.dart';
import './favorite_screen.dart';
import '../model/article.dart';
import '../model/tab_page.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen(
      {super.key,
      required this.availableArticles,
      required this.favoriteArticles});

  final List<Article> availableArticles;
  final List<Article> favoriteArticles;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      TabPage(
        title: 'Categories',
        widget: CategoryScreen(availableArticles: widget.availableArticles),
      ),
      TabPage(
        title: 'Favorites',
        widget: FavoriteScreen(
          favoriteArticles: widget.favoriteArticles,
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(pages[_selectedPage].title,
            style: Theme.of(context).textTheme.headline6),
      ),
      body: pages[_selectedPage].widget,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'categories'),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'favorites',
          ),
        ],
        onTap: (value) => setState(() {
          _selectedPage = value;
        }),
        currentIndex: _selectedPage,
      ),
    );
  }
}
