import 'package:flutter/material.dart';
import '../model/taste_item.dart';

class ItemsScreen extends StatelessWidget {
  static const routeName = '/items';

  const ItemsScreen({super.key, required this.availableItems});

  final List<TasteItem> availableItems;

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Items screen!'));
  }
}
