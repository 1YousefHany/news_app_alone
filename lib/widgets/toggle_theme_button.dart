import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/theme_cubit.dart';
import 'animated_container_body.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        BlocProvider.of<ThemeCubit>(context).toggleTheme();
      },
      child: BlocBuilder<ThemeCubit,ThemeState>(
        builder: (context , state){
        return  AnimatedContainer(
            margin: const EdgeInsets.only(left: 8, top: 12, bottom: 8),
            padding: const EdgeInsets.only(left: 8,right: 6),
            duration: const Duration(milliseconds:  300),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: state is DarkThemeState? Theme.of(context).primaryColorDark : Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(16),
            ),
            child:  AnimatedContainerBody(isLight: state is LightThemeState,
            ),
          );
        },

      ),
    );
  }
}
