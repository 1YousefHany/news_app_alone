import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/get_news_cubit.dart';
import 'package:news_app_alone/widgets/custom_text.dart';

import '../helper/constants.dart';

class CustomRetryButton extends StatelessWidget {
  const CustomRetryButton({super.key, required this.categoryType});

  final String categoryType ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 150,
      child: TextButton(
        onPressed: () {
           BlocProvider.of<GetNewsCubit>(context).fetchNews(categoryType: categoryType);
         },
        style: _buttonStyle(),
        child: _retryText(),
      ),
    );
  }

  CustomText _retryText() {
    return const CustomText(
        text: 'Retry',
        color: kPrimaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  }

  ButtonStyle _buttonStyle() {
    return TextButton.styleFrom(
        backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      );
  }
}
