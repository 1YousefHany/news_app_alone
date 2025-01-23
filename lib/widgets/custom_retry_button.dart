import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/get_news_cubit.dart';
import 'package:news_app_alone/widgets/custom_text.dart';

import '../helper/constants.dart';

class CustomRetryButton extends StatelessWidget {
  const CustomRetryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            BlocProvider.of<GetNewsCubit>(context).fetchNews();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

          ),
          child: const CustomText(
            text: 'Retry',
            color: kPrimaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}