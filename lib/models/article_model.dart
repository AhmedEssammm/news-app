class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? author;
  final String? content;
  final String? publishedAt;

  ArticleModel(
      {required this.image,
      required this.title,
      required this.subTitle,
      this.author,
      this.content,
      this.publishedAt});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      author: json['author'],
      content: json['content'],
      publishedAt: json['publishedAt'],
    );
  }
}
