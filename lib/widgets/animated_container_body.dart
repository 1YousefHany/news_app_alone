import 'package:flutter/material.dart';

class AnimatedContainerBody extends StatelessWidget {
  const AnimatedContainerBody({
    super.key,
    required this.isLight,  this.lightIcon,  this.darkIcon,
  });

  final bool isLight;
  final dynamic lightIcon,darkIcon;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: isLight ? 1 : 0, end: isLight ? 0 : 1),
      duration: const Duration(milliseconds: 1000),
      builder: (context, opacity, child) {
        return theTwoIcons(opacity, context);
      },
    );
  }

  dynamic theTwoIcons(double opacity, BuildContext context) {
    return isLight
        ? Opacity(
            opacity: 1 - opacity,
            child: lightIcon
          )
        : Opacity(
            opacity: opacity,
            child: darkIcon
          );
  }
}

