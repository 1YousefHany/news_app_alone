import 'package:flutter/material.dart';


class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTextStyle(
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('News'),
              Text('Cloud',style: TextStyle(color: Color(0xffFFCF0A),
              ),
              ),
    ]),
    );
  }
}
