import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/helper/constants.dart';
import 'package:news_app_alone/cubits/get_news_cubit.dart';
import 'package:news_app_alone/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  void initState() {
    BlocProvider.of<GetNewsCubit>(context).fetchNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetNewsCubit, GetNewsState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        if(state is GetNewsLoading){
          return const CustomCircularIndicator();
        } else if(state is GetNewsSuccess){

        return  NewsListView(articles: state.articles,
        );
        }else if(state is GetNewsNetWorkFailure){
          return const SliverToBoxAdapter(child: Text('data'));
        } else {
          return const SliverToBoxAdapter(child: Text('lol'));
        }

      },
    );
  }
}
class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child:  Center(
        child:  CircularProgressIndicator(
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
