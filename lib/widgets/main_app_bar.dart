import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/toggle_theme_button.dart';
import '../helper/constants.dart';

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
      titleSpacing: 0,
      leadingWidth: 90,
      leading: isHomeView ? const ToggleThemeButton() : null,
      bottom: bottom,
      forceMaterialTransparency: true,
      title: title(context),
    );
  }

  DefaultTextStyle title(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 24,
        fontFamily: 'Playfair Display',
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      child: newsCloudText(context),
    );
  }

  Row newsCloudText(BuildContext context) {
    return Row(mainAxisAlignment: mainAxisAlignment, children: [
      Text(
        'News',
        style: TextStyle(
            color:
                Theme.of(context).textTheme.titleLarge!.color ?? Colors.black),
      ),
      const Text(
        'Cloud',
        style: TextStyle(
          color: kPrimaryColor,
        ),
      ),
    ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


