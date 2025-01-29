import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/news_list_view_builder.dart';
import '../widgets/main_app_bar.dart';
import '../widgets/categories_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(),
      body:  Padding(
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


