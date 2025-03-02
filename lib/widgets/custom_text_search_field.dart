import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/search_mode_cubit.dart';

class CustomTextSearchField extends StatelessWidget {
  const CustomTextSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.58,
        child: TextField(
          cursorColor: Theme.of(context).focusColor,
          onSubmitted: (value){
            BlocProvider.of<SearchModeCubit>(context).closeSearchMode();
          },
          decoration: mainTextFieldDecoration(context),
        ),
      ),
    );
  }

  InputDecoration mainTextFieldDecoration(BuildContext context) {
    return InputDecoration(
          contentPadding: const EdgeInsets.only(top: 18),
          suffixIcon: customCloseIcon(context),
          focusedBorder:  customFocusedBorder(context)
          );
  }


  UnderlineInputBorder customFocusedBorder(BuildContext context) {
    return UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).focusColor
            )
          );
  }

  IconButton customCloseIcon(BuildContext context) {
    return IconButton(
      splashColor: Colors.grey,
      onPressed: (){
        BlocProvider.of<SearchModeCubit>(context).toggleSearchMode();
      }, icon: Icon(Icons.close,
      size: 25,
      color: Theme.of(context).focusColor,
    ),
    );
  }

}
