import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/app_bar_title.dart';
import 'package:news_app_alone/widgets/news_list_view_builder.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key, required this.appBarTitle});

  final String appBarTitle ;

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        title: AppBarTitle(title2: widget.appBarTitle,
          isCenter: false,
        ),
      ),
      body: const CustomScrollView(
        slivers: [
          SliverPadding(
            padding:  EdgeInsets.all(16),
              sliver: NewsListViewBuilder())
        ],
      ),
    );
  }
}
