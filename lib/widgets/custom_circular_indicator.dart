import 'package:flutter/material.dart';

import '../helper/constants.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 450,
      child: Center(
        child:  CircularProgressIndicator(
         strokeWidth: 5,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}