import 'package:flutter/material.dart';
import 'model/article.dart';
import 'screens/article_detail_screen.dart';
import 'screens/article_screen.dart';
import 'screens/tabs_screen.dart';
import './data/starter_data.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<Article> _availableArticles = [];
  final Set<String> _filterTags = {'Reincarnation'};
  final Set<String> _avaiableTags = {};
  final Set<String> _favorites = {};

  @override
  void initState() {
    super.initState();
    for (var article in articleStarterData) {
      for (var tag in article.tags) {
        _avaiableTags.add(tag);
      }
    }
    _availableArticles.addAll(articleStarterData);
    for (String tag in _filterTags) {
      _availableArticles.removeWhere((article) => !article.tags.contains(tag));
    }
  }

  void _toggleFavorite(String articleId) {
    if (_favorites.contains(articleId)) {
      setState(() {
        _favorites.remove(articleId);
      });
    } else {
      setState(() {
        _favorites.add(articleId);
      });
    }
  }

  bool _isFavorite(String articleId) {
    return _favorites.contains(articleId);
  }

  void _updateAvailableArticles() {
    List<Article> filteredArticles = [];
    filteredArticles.addAll(articleStarterData);

    for (String tag in _filterTags) {
      filteredArticles.removeWhere((article) => !article.tags.contains(tag));
    }

    setState(() {
      _availableArticles = filteredArticles;
    });
  }

  void _toggleFilterTag(String tag) {
    if (_filterTags.contains(tag)) {
      setState(() {
        _filterTags.remove(tag);
      });
    } else {
      setState(() {
        _filterTags.add(tag);
      });
    }
    _updateAvailableArticles();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taste App',
      home: TabsScreen(
        availableArticles: _availableArticles,
        favoriteArticles: _favorites
            .map((id) =>
                articleStarterData.firstWhere((element) => element.id == id))
            .toList(),
        tags: _avaiableTags,
        filteredTags: _filterTags,
        toggleFilterTag: _toggleFilterTag,
      ),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
              .copyWith(secondary: Colors.green),
          canvasColor: const Color.fromRGBO(250, 246, 243, 1),
          fontFamily: 'Roboto Condensed',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: const TextStyle(
                    color: Color.fromRGBO(20, 51, 51, 1), fontSize: 20),
                bodyText2: const TextStyle(
                    color: Color.fromRGBO(20, 51, 51, 1), fontSize: 20),
                headline6: const TextStyle(
                  color: Color.fromRGBO(250, 249, 246, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source Sans Pro',
                ),
              )),
      routes: {
        ArticleScreen.routeName: (context) =>
            ArticleScreen(availableArticles: _availableArticles),
        ArticleDetailScreen.routeName: (context) => ArticleDetailScreen(
              isFavorite: _isFavorite,
              toggleFavorite: _toggleFavorite,
            ),
      },
    );
  }
}
