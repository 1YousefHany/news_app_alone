import 'package:flutter/material.dart';

class AnimatedContainerBody extends StatelessWidget {
  const AnimatedContainerBody({
    super.key,
    required this.isLight,
  });

  final bool isLight;

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

  Row theTwoIcons(double opacity, BuildContext context) {
    return Row(
        spacing: 20,
        children: [
          Opacity(
            opacity: 1 - opacity,
            child: const Icon(
              Icons.light_mode,
              color: Colors.yellow,
            ),
          ),
          Opacity(
            opacity: opacity,
            child: Icon(
              Icons.dark_mode_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
          )
        ],
      );
  }
}
