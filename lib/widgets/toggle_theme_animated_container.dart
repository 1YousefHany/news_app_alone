import 'package:flutter/material.dart';
import 'package:news_app_alone/cubits/theme_cubit.dart';
import 'package:news_app_alone/widgets/animated_container_body.dart';

class ToggleThemeAnimatedContainer extends StatelessWidget {
  const ToggleThemeAnimatedContainer({
    super.key,
    required this.state,
  });
  final dynamic state;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(left: 8, top: 12, bottom: 8 ,right: 24),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: animatedContainerDecoration(context),
      child: AnimatedContainerBody(
        isLight: state is LightThemeState,
      ),
    );
  }

  BoxDecoration animatedContainerDecoration(BuildContext context) {
    return BoxDecoration(
      color: state is DarkThemeState
          ? Theme.of(context).primaryColorDark
          : Theme.of(context).primaryColorLight,
      borderRadius: BorderRadius.circular(16),
    );
  }
}
