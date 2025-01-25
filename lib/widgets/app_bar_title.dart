import 'package:flutter/material.dart';

import '../helper/constants.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key,});



  @override
  Widget build(BuildContext context) {
    return const DefaultTextStyle(
      style:  TextStyle(
          fontSize: 24,
          fontFamily: 'Playfair Display',
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text('News'),
        Text('Cloud',
          style:  TextStyle(
            color: kPrimaryColor,
          ),
        ),
      ])
    );
  }
}
