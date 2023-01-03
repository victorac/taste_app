import 'package:flutter/material.dart';
import './search_tag.dart';

class FilterDrawer extends StatelessWidget {
  const FilterDrawer({
    super.key,
    required this.tags,
    required this.filteredTags,
    required this.toggleFilterTag,
  });

  final Set<String> tags;
  final Set<String> filteredTags;
  final Function toggleFilterTag;

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
              padding: const EdgeInsets.only(left: 5),
              alignment: Alignment.centerLeft,
              color: Theme.of(context).colorScheme.primary,
              child: Text(
                'Tag filters',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SearchTag(
              tags: tags,
              toggleFilterTag: toggleFilterTag,
            ),
            Wrap(
              children: filteredTags
                  .map((e) => Chip(
                        label: Text(e),
                        onDeleted: () => toggleFilterTag(e),
                      ))
                  .toList(),
            )
          ],
        ));
  }
}
