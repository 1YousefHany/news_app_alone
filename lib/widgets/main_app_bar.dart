import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/search_icon_builder.dart';
import 'package:news_app_alone/widgets/main_app_bar_title.dart';
import 'package:news_app_alone/widgets/toggle_theme_button.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    this.bottom,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.isHomeView = false,
  });
  final PreferredSizeWidget? bottom;
  final MainAxisAlignment mainAxisAlignment;
  final bool isHomeView;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 80,
      leading: isHomeView ? const ToggleThemeButton() : null,
      actions: const [ SearchIconBuilder()
      ],
      bottom: bottom,
      forceMaterialTransparency: true,
      title: mainAppBarTitle(context, mainAxisAlignment),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

