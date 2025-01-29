import 'package:flutter/material.dart';
import 'package:news_app_alone/helper/constants.dart';

class CustomLinearProgressIndicator extends StatefulWidget {
  const CustomLinearProgressIndicator({super.key, required this.loadingProgress});

 final  int loadingProgress;
  @override
  State<CustomLinearProgressIndicator> createState() => _CustomLinearProgressIndicatorState();
}

class _CustomLinearProgressIndicatorState extends State<CustomLinearProgressIndicator> {


  @override
  Widget build(BuildContext context) {
    return  LinearProgressIndicator(
      color: kPrimaryColor,
      value: widget.loadingProgress / 100,
      backgroundColor: Colors.black,
    );
  }
}
