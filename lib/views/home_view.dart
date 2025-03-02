import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/search_icon_builder.dart';
import '../widgets/custom_floating_action_button.dart';
import '../widgets/home_view_body.dart';
import '../widgets/main_app_bar.dart';
import '../widgets/toggle_theme_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  MainAppBar(
        leading: ToggleThemeButton(),
        actions: [SearchIconBuilder()],
        mainAxisAlignment: MainAxisAlignment.center,
        isHomeView: true,
      ),
      body:  HomeViewBody(),
      floatingActionButton:  CustomFloatingActionButton(),
    );
  }
}

