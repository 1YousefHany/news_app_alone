import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/helper/constants.dart';

import '../cubits/scroll_cubit.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollCubit, bool>(
      builder: (context, isScrolling) {
        return _buildFloatingActionButton(isScrolling);
      },
    );
  }

  TweenAnimationBuilder<double> _buildFloatingActionButton(bool isScrolling) {
    return TweenAnimationBuilder(
        tween: _customTween(isScrolling),
        duration: const Duration(milliseconds: 300),
        builder: (context, opacity, child) {
          return isScrolling
              ? _showFloatingActionButton(opacity, context)
              : _disappearFAB(opacity, context);
        },
      );
  }

  Tween<double> _customTween(bool isScrolling) {
    return Tween<double>(
          begin: isScrolling ? 0 : 1, end: isScrolling ? 1 : 0);
  }

  Opacity _showFloatingActionButton(double opacity, BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          BlocProvider.of<ScrollCubit>(context).scrollToTop();
        },
        mini: true,
        child: const Icon(
          Icons.keyboard_double_arrow_up,
          color: kPrimaryColor,
        ),
      ),
    );
  }

  Opacity _disappearFAB(double opacity, BuildContext context) {
    return Opacity(
        opacity: opacity,
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            BlocProvider.of<ScrollCubit>(context).scrollToTop();
          },
          mini: true,
          child: const Icon(
            Icons.keyboard_double_arrow_up,
            color: kPrimaryColor,
          ),
        ));
  }
}
