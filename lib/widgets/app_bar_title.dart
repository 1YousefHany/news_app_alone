import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('News',style: TextStyle(fontWeight: FontWeight.w600),
        ),
        Text('Cloud',style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xffFFCF0A)),
        ),
      ],
    );
  }
}