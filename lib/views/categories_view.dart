import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/get_news_cubit.dart';
import 'package:news_app_alone/widgets/app_bar_title.dart';
import 'package:news_app_alone/widgets/custom_circular_indicator.dart';
import 'package:news_app_alone/widgets/handle_network_failure.dart';
import 'package:news_app_alone/widgets/news_list_view.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key, required this.appBarTitle});

  final String appBarTitle ;

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  void initState() {
    BlocProvider.of<GetNewsCubit>(context).fetchNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitle(title2: widget.appBarTitle,isCenter: false,
        ),
      ),
      body: BlocBuilder<GetNewsCubit, GetNewsState>(
        builder: (context, state) {
          if (state is GetNewsLoading) {
            return const CustomCircularIndicator();
          }
          else if (state is GetNewsSuccess) {
            return  NewsListView(articles: state.articles,
            );
          } else if (state is GetNewsNetWorkFailure) {
            debugPrint(state.errMessage);
            return const HandleFailureState(message: 'Check ur Internet and try again!',);
          } else if (state is GetNewsFailureState){
            debugPrint(state.errMessage);
            return const HandleFailureState(message: 'unExpected Error , Please try later!',);
          }
          else{
            return const SliverToBoxAdapter(child:  Text('unExpected Error , please try later!'));
          }
        },
      ),
    );
  }
}
