import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/custom_app_bar.dart';
import 'package:news_app_alone/widgets/custom_refresh_indicator.dart';
import 'package:news_app_alone/widgets/news_list_view_builder.dart';

class CategoriesCardView extends StatefulWidget {
  const CategoriesCardView({super.key, required this.appBarTitle});

  final String appBarTitle;

  @override
  State<CategoriesCardView> createState() => _CategoriesCardViewState();
}

class _CategoriesCardViewState extends State<CategoriesCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: widget.appBarTitle),
      body: CustomRefreshIndicator(
        categoryType: widget.appBarTitle,
        context: context,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: NewsListViewBuilder(
                categoryType: widget.appBarTitle,
              ),
            )
          ],
        ),
      ),
    );
  }
}

