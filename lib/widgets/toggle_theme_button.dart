import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/theme_cubit.dart';
import 'package:news_app_alone/widgets/toggle_theme_animated_container.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<ThemeCubit>(context).toggleTheme();
      },
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return ToggleThemeAnimatedContainer(

            state: state,
          );
        },
      ),
    );
  }
}
