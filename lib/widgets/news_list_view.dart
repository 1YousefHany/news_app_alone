import 'package:flutter/material.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'news_list_form.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
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
