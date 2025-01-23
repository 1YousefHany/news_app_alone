import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/news_list_view_builder.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/categories_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const AppBarTitle(title1: 'News',title2: 'Cloud',isCenter: true,),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(16),
        child:  CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesList()),
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


