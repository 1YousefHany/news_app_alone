import 'package:dio/dio.dart';
import 'package:news_app_alone/helper/constants.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'package:news_app_alone/helper/network_exception.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines(String categoryType) async {
    try {
      Response response = await dio.get(
          'https://$kTopHeadLinePath?country=us&apiKey=$kApiKey&category=$categoryType');

      List<dynamic> articles = response.data['articles'];

    List<ArticleModel>  articlesList = articles.map((article) => ArticleModel.fromJson(article)).toList();

    return articlesList;
    } on DioException catch (e) {
     throw NetWorkException.handleNetWorkException(e);
    } catch (e) {
      throw Exception('UnExpected Error occurred: ${e.runtimeType} , Error is :${e.toString()}');
    }
  }
}
