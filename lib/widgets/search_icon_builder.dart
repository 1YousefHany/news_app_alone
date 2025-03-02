import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/theme_cubit.dart';
import 'package:news_app_alone/widgets/custom_search_icon.dart';
import 'package:news_app_alone/widgets/toggle_theme_animated_container.dart';

class SearchIconBuilder extends StatelessWidget {
  const SearchIconBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return SizedBox(
          width: 50,
          child: ToggleIconThemeAnimatedContainer(
            marginEdgeInsets:
                const EdgeInsets.only(left: 1, top: 16, bottom: 5, right: 12),
            lightIcon: _lightSearchIcon(),
            darkIcon: _darkSearchIcon(),
            isLight: state is LightThemeState ? true : false,
          ),
        );
      },
    );
  }

  CustomSearchIcon _lightSearchIcon() {
    return const CustomSearchIcon(
      color: Colors.white,
    );
  }

  CustomSearchIcon _darkSearchIcon() {
    return const CustomSearchIcon(
      color: Colors.white,
    );
  }
}
