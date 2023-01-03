import 'package:flutter/material.dart';

class SearchTag extends StatefulWidget {
  const SearchTag(
      {super.key, required this.tags, required this.toggleFilterTag});

  final Set<String> tags;
  final Function toggleFilterTag;

  @override
  State<SearchTag> createState() => _SearchTagState();
}

class _SearchTagState extends State<SearchTag> {
  late TextEditingController _controller;
  List<String> tagsFound = [];

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateTags(String value) {
    setState(() {
      tagsFound = widget.tags
          .where(
              (element) => element.toLowerCase().contains(value.toLowerCase()))
          .take(10)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Focus(
              onFocusChange: (value) => setState(() {
                tagsFound = [];
              }),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
                onChanged: (value) => _updateTags(value),
              ),
            ),
          ),
          Wrap(
            spacing: 5,
            children: tagsFound
                .map((e) => InputChip(
                      label: Text(e),
                      onPressed: () => widget.toggleFilterTag(e),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
