import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/search_mode_cubit.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
        BlocProvider.of<SearchModeCubit>(context).closeSearchMode();

      },
      icon: Icon(
        Icons.arrow_back,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
