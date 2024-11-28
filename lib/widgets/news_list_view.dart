import 'package:flutter/material.dart';

import 'news_list_form.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 8,
          (context,index){
            return const NewsListForm();
          }
      ),
        );
  }
}
