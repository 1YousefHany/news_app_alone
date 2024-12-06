import 'package:flutter/material.dart';
import 'package:news_app_alone/views/home_view.dart';


void main()async{
  runApp(const NewsAppAlone());
}
class NewsAppAlone extends StatelessWidget {
  const NewsAppAlone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  HomeView(),
    );
  }
}




