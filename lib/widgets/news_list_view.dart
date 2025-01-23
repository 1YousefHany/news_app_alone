import 'package:flutter/material.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'news_list_form.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    print("Building NewsListForm for article: ${articles[0].title}");
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
          (context,index){
            return  NewsListForm(article: articles[index],
            );
          }
      ),
        );
  }
}
