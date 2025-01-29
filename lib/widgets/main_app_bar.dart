import 'package:flutter/material.dart';

import '../helper/constants.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MainAppBar({
    super.key, this.bottom,
  });
final PreferredSizeWidget? bottom ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      forceMaterialTransparency: true,
      title: const DefaultTextStyle(
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Playfair Display',
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('News'),
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
