import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/main_app_bar_title.dart';

class NewsWebView extends StatelessWidget {
  const NewsWebView({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const MainAppBarTitle(),),

    );
  }
}
