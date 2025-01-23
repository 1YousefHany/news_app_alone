import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/get_news_cubit.dart';
import 'package:news_app_alone/simple_bloc_observer.dart';
import 'package:news_app_alone/views/home_view.dart';


void main() async {
  Bloc.observer = SimpleBlocObserver();

  runApp(const NewsAppAlone());
}

class NewsAppAlone extends StatelessWidget {
  const NewsAppAlone({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: BlocProvider(
        create: (context) => GetNewsCubit(),
        child: const HomeView(),
      ),
    );
  }
}




