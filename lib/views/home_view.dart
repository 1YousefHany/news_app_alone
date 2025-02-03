import 'package:flutter/material.dart';
import '../widgets/home_view_body.dart';
import '../widgets/main_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(
        mainAxisAlignment: MainAxisAlignment.center,
        isHomeView: true,
      ),
      body:  HomeViewBody(),
    );
  }
}



