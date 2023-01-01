class TasteItem {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final List<String> tags;
  final Map<String, Object> summaryProperties;
  final List<String> categories;

  const TasteItem({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.summaryProperties,
    required this.tags,
    required this.categories,
  });
}
