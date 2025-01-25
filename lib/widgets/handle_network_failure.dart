import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/custom_retry_button.dart';
import 'package:news_app_alone/widgets/custom_text.dart';

class HandleFailureState extends StatelessWidget {
  const HandleFailureState({super.key, required this.message, required this.categoryType});

  final String message ;
  final String categoryType ;

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top:180),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 12,
          children: [
            CustomText(text: message),
             CustomRetryButton(categoryType: categoryType,
             ),
          ],
        ),
      ),
    );
  }
}
