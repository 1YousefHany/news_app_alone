import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news_app_alone/widgets/custom_refresh_indicator.dart';

import 'categories_list.dart';
import 'news_list_view_builder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomRefreshIndicator(
        categoryType: 'general',
        context: context,
        child: const CustomScrollView(
          physics:  BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesList(
              ),
            ),
             SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
             NewsListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
