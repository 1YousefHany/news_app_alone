import 'package:dio/dio.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'package:news_app_alone/network_exception.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=cbb5232f0fef425480b5e2e2ac618019&category=general');

      List<dynamic> articles = response.data['articles'];

      return articles.map((article) => ArticleModel.fromJson(article)).toList();

    } on DioException catch (e) {
      throw (NetWorkException.handleNetWorkException(e));
    } catch (e) {
      throw Exception('UnExpected Error occurred: ${e.runtimeType} , Error is :${e.toString()}');
    }
  }
}
