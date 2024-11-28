import 'package:flutter/material.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/categories_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
      ),
      body: const CategoriesList(),
    );


  }
}




