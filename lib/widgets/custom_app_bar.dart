import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/main_app_bar_title.dart';
import 'package:news_app_alone/widgets/search_icon_builder.dart';
import 'arrow_back_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.appBarTitle});

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        actions: const [SearchIconBuilder()],
        leading: const ArrowBackIcon(),
        forceMaterialTransparency: true,
        title: customAppBarTitle(context, MainAxisAlignment.start,
            title1: appBarTitle)
        //
        );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

