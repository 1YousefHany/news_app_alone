import 'package:dio/dio.dart';
import 'package:news_app_alone/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
      Response response = await dio.get(
              'https://newsapi.org/v2/top-headlines?country=us&apiKey=cbb5232f0fef425480b5e2e2ac618019&category=general');

      List<dynamic>  articles = response.data['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
            ArticleModel articles = ArticleModel.fromJson(article);
            articlesList.add(articles);
          }
      return articlesList;
    }  catch (e) {
     return [];
    }
  }
}
