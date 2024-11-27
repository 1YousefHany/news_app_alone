import 'package:flutter/material.dart';
import 'package:news_app_alone/views/home_view.dart';
import 'package:news_app_alone/widgets/app_bar_title.dart';


void main(){

  runApp(const NewsAppAlone());
}
class NewsAppAlone extends StatelessWidget {
  const NewsAppAlone({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const AppBarTitle(),
        ),
        body: const HomeView(),
      ),
    );
  }
}




