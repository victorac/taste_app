import 'package:flutter/material.dart';

class FilterDrawer extends StatelessWidget {
  const FilterDrawer({
    super.key,
    required this.tags,
    required this.filteredTags,
    required this.deleteFilter,
  });

  final Set<String> tags;
  final Set<String> filteredTags;
  final Function deleteFilter;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(150),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              color: Theme.of(context).canvasColor,
              child: const Text('Tag filters'),
            ),
            Wrap(
              children: filteredTags
                  .map((e) => Chip(
                        label: Text(e),
                        onDeleted: () => deleteFilter(e),
                      ))
                  .toList(),
            )
          ],
        ));
  }
}
