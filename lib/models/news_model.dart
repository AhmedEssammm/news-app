class NewsModel {
  final String author;
  final String title;
  final String description;
  final String imageUrl;
  final String publishedAt;
  final String content;

  NewsModel(
      {required this.author,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.publishedAt,
      required this.content});
}
