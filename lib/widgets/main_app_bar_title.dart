import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/search_mode_cubit.dart';
import 'package:news_app_alone/widgets/toggle_title_to_search.dart';

import '../helper/constants.dart';

DefaultTextStyle customAppBarTitle(BuildContext context, mainAxisAlignment,
    {required String title1, String? title2}) {
  return DefaultTextStyle(
    style: titleStyle(),
    child: BlocBuilder<SearchModeCubit, bool>(
        builder: (context, state) {
      return ToggleTitleToSearch(
        isTrue: state,
        mainAxisAlignment: mainAxisAlignment,
        title1: title1,
        title2: title2,
      );
    }),
  );
}

TextStyle titleStyle() {
  return const TextStyle(
    fontSize: 24,
    fontFamily: 'Playfair Display',
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
}

Row appBarText(
    BuildContext context, mainAxisAlignment, String title1, String? title2) {
  return Row(mainAxisAlignment: mainAxisAlignment, children: [
    Text(
      title1,
      style: TextStyle(
          color: Theme.of(context).textTheme.titleLarge!.color ?? Colors.black),
    ),
    Text(
      title2 ?? '',
      style: const TextStyle(
        color: kPrimaryColor,
      ),
    ),
  ]);
}


