import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.appBarTitle
  });

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      title: Text(
        appBarTitle,
        style:   TextStyle(
          fontSize: 24,
          fontFamily: 'Playfair Display',
          color: Theme.of(context).textTheme.titleLarge!.color ?? Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
