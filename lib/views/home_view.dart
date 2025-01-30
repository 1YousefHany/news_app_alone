import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/custom_refresh_indicator.dart';
import 'package:news_app_alone/widgets/news_list_view_builder.dart';
import '../widgets/main_app_bar.dart';
import '../widgets/categories_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:const MainAppBar(mainAxisAlignment: MainAxisAlignment.center,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16),
        child:  CustomRefreshIndicator(
          categoryType: 'general',
          context: context,
          child: const CustomScrollView(
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
      ),
    );
  }
}


