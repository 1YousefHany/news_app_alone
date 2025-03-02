import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/search_mode_cubit.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, this.color});

  final Color? color ;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        BlocProvider.of<SearchModeCubit>(context).toggleSearchMode();
      },
      icon:  Icon(
        Icons.manage_search,
        size: 28,
        color: color,
      ),
    );
  }
}
