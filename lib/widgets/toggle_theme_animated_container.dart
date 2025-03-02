import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/animated_container_body.dart';

class ToggleIconThemeAnimatedContainer extends StatelessWidget {
  const ToggleIconThemeAnimatedContainer({
    super.key,
    required this.isLight,
     this.lightIcon,
     this.darkIcon,
    this.paddingEdgeInsets,
    this.marginEdgeInsets,

  });
  final bool isLight;
  final dynamic lightIcon, darkIcon;
  final EdgeInsets? paddingEdgeInsets;
  final EdgeInsets? marginEdgeInsets;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: marginEdgeInsets,
      padding:  paddingEdgeInsets ,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: animatedContainerDecoration(context),
      child: AnimatedContainerBody(
        isLight: isLight,
        lightIcon: lightIcon,
        darkIcon: darkIcon,

      ),
    );
  }

  BoxDecoration animatedContainerDecoration(BuildContext context) {
    return BoxDecoration(
      color: isLight
          ? Theme.of(context).primaryColorLight
          : Theme.of(context).primaryColorDark,
      borderRadius: BorderRadius.circular(16),
    );
  }
}
