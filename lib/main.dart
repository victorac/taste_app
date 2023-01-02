import 'package:flutter/material.dart';
import 'package:taste_app/model/taste_item.dart';
import 'package:taste_app/screens/category_screen.dart';
import 'package:taste_app/screens/item_detail_screen.dart';
import 'package:taste_app/screens/items_screen.dart';
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
  late List<TasteItem> _availableItems;
  var _filterTags = [];
  List<String> _avaiableTags = [];

  @override
  void initState() {
    super.initState();
    _availableItems = itemsStarterData;
    print(_availableItems);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // for (var i = 0; i < _filterTags.length; i++) {
    //   _availableItems = itemsStarterData
    //       .where((element) => element.tags.contains(_filterTags[i]))
    //       .toList();
    // }
  }

  @override
  Widget build(BuildContext context) {
    print(_availableItems);
    return MaterialApp(
      title: 'Taste App',
      home: CategoryScreen(availableItems: _availableItems),
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
        CategoryScreen.routePath: (context) =>
            CategoryScreen(availableItems: _availableItems),
        ItemsScreen.routeName: (context) =>
            ItemsScreen(availableItems: _availableItems),
        ItemDetailScreen.routeName: (context) => ItemDetailScreen(),
      },
    );
  }
}
