import 'package:flutter/material.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/categories_list.dart';
import '../widgets/news_list_form.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
      ),
      body: const Column(
        children: [
          CategoriesList(),
          SizedBox(
            height: 16,
          ),
          NewsListForm(),
        ],
      ),
    );
  }
}

