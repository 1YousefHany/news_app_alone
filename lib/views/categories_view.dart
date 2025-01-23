import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/app_bar_title.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.appBarTitle});

  final String appBarTitle ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitle(title2: appBarTitle,isCenter: false,
        ),
      ),
    );
  }
}
