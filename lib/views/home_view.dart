import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/category_card.dart';

import '../widgets/app_bar_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
      ),
      body: const CategoryCard(),
    );


  }
}


