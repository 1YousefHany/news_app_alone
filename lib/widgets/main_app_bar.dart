import 'package:flutter/material.dart';

import '../helper/constants.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    this.bottom,  this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final PreferredSizeWidget? bottom;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      forceMaterialTransparency: true,
      title:  DefaultTextStyle(
        style: const TextStyle(
          fontSize: 24,
          fontFamily: 'Playfair Display',
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: const [
          Text('News'
          ),
          Text(
            'Cloud',
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
