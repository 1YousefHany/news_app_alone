import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/main_app_bar_title.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    this.bottom,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.isHomeView = false,
    this.leading,
    this.actions,
  });
  final PreferredSizeWidget? bottom;
  final MainAxisAlignment mainAxisAlignment;
  final bool isHomeView;
  final Widget? leading ;
  final List<Widget>? actions ;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 80,
      leading: leading,
      actions: actions,
      bottom: bottom,
      forceMaterialTransparency: true,
      title: customAppBarTitle(context, mainAxisAlignment,
          title1: 'News', title2: 'Cloud'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
