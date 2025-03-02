import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/get_news_cubit.dart';
import 'package:news_app_alone/cubits/scroll_cubit.dart';
import 'package:news_app_alone/cubits/search_mode_cubit.dart';
import 'package:news_app_alone/cubits/theme_cubit.dart';
import 'package:news_app_alone/helper/simple_bloc_observer.dart';
import 'package:news_app_alone/views/home_view.dart';
import 'package:news_app_alone/widgets/custom_dark_theme_data.dart';
import 'package:news_app_alone/widgets/custom_light_theme_data.dart';


void main()  {
  Bloc.observer = SimpleBlocObserver();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetNewsCubit()),
        BlocProvider(create: (context)=> ThemeCubit()),
        BlocProvider(create: (context)=> ScrollCubit()),
        BlocProvider(create: (context)=>SearchModeCubit()),
      ],
      child: const NewsAppAlone(),
  ),
  );
}

class NewsAppAlone extends StatefulWidget {
  const NewsAppAlone({super.key});

  @override
  State<NewsAppAlone> createState() => _NewsAppAloneState();
}

class _NewsAppAloneState extends State<NewsAppAlone> {
  @override
  void initState() {
    BlocProvider.of<ThemeCubit>(context).loadTheme();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<ThemeCubit,ThemeState>(
      builder: (context , state){
        return MaterialApp(
          theme: customLightThemeData(),
          themeMode: state is DarkThemeState ? ThemeMode.dark : ThemeMode.light,
          darkTheme: customDarkThemeData(isDarkMode: state is DarkThemeState),
          home: const HomeView(),
        );
      },
    );
  }



}




