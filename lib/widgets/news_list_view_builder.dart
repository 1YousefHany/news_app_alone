import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/get_news_cubit.dart';
import 'package:news_app_alone/widgets/custom_circular_indicator.dart';
import 'package:news_app_alone/widgets/handle_network_failure.dart';
import 'package:news_app_alone/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key,  this.categoryType = 'general'});

  final String categoryType ;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  void initState() {
    BlocProvider.of<GetNewsCubit>(context).fetchNews(categoryType: widget.categoryType);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        if (state is GetNewsLoading) {
          return const SliverToBoxAdapter(child:  CustomCircularIndicator());
       }
        else if (state is GetNewsSuccess) {
          return  NewsListView(articles: state.articles,
          );
        } else if (state is GetNewsNetWorkFailure) {
          debugPrint(state.errMessage);
          return  HandleFailureState(message: state.errMessage,categoryType: widget.categoryType,
          );
        } else if (state is GetNewsFailureState){
          debugPrint(state.errMessage);
          return  HandleFailureState(message: state.errMessage,categoryType: widget.categoryType,
          );
        }
        else{
          return const SliverToBoxAdapter(child:  Text('unExpected Error , please try later!'));
        }
      },
    );
  }
}



