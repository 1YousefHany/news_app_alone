import 'package:flutter/material.dart';

import '../helper/constants.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key, this.title1 = '', this.title2 = '', required this.isCenter});

  final String title1, title2;
  final bool isCenter ;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      ),
      child: isCenter ? Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(title1),
        Text(title2,
          style: const TextStyle(
            color: kPrimaryColor,
          ),
        ),
      ]) : Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title1),
            Text(title2,
              style: const TextStyle(
                color: kPrimaryColor,
              ),
            ),
          ]),
    );
  }
}
