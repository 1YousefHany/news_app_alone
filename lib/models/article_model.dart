class ArticleModel {
  final String title;
  final String? subtitle;
  final String? image;
  final String url;

  const ArticleModel({
    required this.title,
    this.image,
    this.subtitle,
    required this.url,
  });
  //url
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        title: json['title'],
        subtitle: json['description'],
        image: json['urlToImage'],
      url: json['url']
    );
  }
}
