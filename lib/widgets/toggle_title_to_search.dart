import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/custom_text_search_field.dart';
import 'package:news_app_alone/widgets/main_app_bar_title.dart';

class ToggleTitleToSearch extends StatelessWidget {
  const ToggleTitleToSearch(
      {super.key,
      required this.isTrue,
      required this.mainAxisAlignment,
      required this.title1,
      this.title2});

  final bool isTrue;
  final MainAxisAlignment mainAxisAlignment;
  final String title1;
  final String? title2;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeInOut,
        tween: Tween<double>(begin: isTrue ? 0 : 1, end: isTrue ? 1 :0),
        duration: const Duration(milliseconds: 500),
        builder: (context, opacity, child) {
          return isTrue
              ? Opacity(
            opacity: opacity,
            child: const CustomTextSearchField(),
          ):
          Opacity(
                  opacity:1 - opacity,
                  child: appBarText(context, mainAxisAlignment, title1, title2),
                );

        });
  }
}
