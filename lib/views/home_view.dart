import 'package:flutter/material.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/categories_list.dart';
import '../widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const AppBarTitle(),
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
            NewsListView(),
          ],
        ),
      ),
    );
  }
}


