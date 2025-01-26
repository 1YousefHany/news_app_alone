import 'package:flutter/material.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'package:news_app_alone/views/news_web_view.dart';
import 'news_list_form.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NewsWebView()));
          },
          child: NewsListForm(
            article: articles[index],
          ),
        );
      }),
    );
  }
}
