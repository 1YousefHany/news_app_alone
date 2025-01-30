import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/get_news_cubit.dart';
import 'package:news_app_alone/helper/constants.dart';

class CustomRefreshIndicator extends StatelessWidget {
  const CustomRefreshIndicator({super.key, required this.child, required this.categoryType, required this.context});
final String categoryType;
  final Widget child ;
  final BuildContext context;
  // final Future<void> Function() onRefresh ;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: kPrimaryColor,
      onRefresh: _pullRefresh,
      child: child,
    );
  }
  Future<void> _pullRefresh() async{

     BlocProvider.of<GetNewsCubit>(context).fetchNews(categoryType: categoryType);
  }
}

