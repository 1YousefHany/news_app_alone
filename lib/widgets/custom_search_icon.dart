import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, this.color});

  final Color? color ;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      icon:  Icon(
        Icons.manage_search,
        size: 28,
        color: color,
      ),
    );
  }
}
