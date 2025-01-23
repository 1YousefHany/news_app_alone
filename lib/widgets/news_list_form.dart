import 'package:flutter/material.dart';
import 'package:news_app_alone/constants.dart';
import 'package:news_app_alone/models/article_model.dart';

import 'custom_text.dart';

class NewsListForm extends StatelessWidget {
  const NewsListForm({super.key, required this.article});

  final ArticleModel article ;
  @override
  Widget build(BuildContext context) {
    print("Building NewsListForm for article: ${article.title}");
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          SizedBox(
            height: 220,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                article.image ?? kNoImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
           CustomText(

            text: article.title,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            maxLines: 2,
            textOverflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
           CustomText(
            text:
           article.subtitle ?? '',
            maxLines: 2,
            color: Colors.grey,
            textOverflow: TextOverflow.ellipsis,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
