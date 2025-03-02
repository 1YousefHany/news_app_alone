import 'package:flutter/material.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'package:news_app_alone/widgets/image_handle.dart';

import 'custom_text.dart';

class NewsListTile extends StatelessWidget {
  const NewsListTile({super.key, required this.article});

  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          newsImage(context),
          const SizedBox(
            height: 16,
          ),
          newsTitle(context),
          const SizedBox(
            height: 8,
          ),
          newsSubtitle(),
        ],
      ),
    );
  }

  SizedBox newsImage(BuildContext context) {
    return SizedBox(
          height: 220,
          width: MediaQuery.of(context).size.width,
          child: ImageHandle(article: article),
        );
  }

  CustomText newsTitle(BuildContext context) {
    return CustomText(
      text: article.title,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).textTheme.bodyLarge!.color ?? Colors.black ,
      maxLines: 2,
      textOverflow: TextOverflow.ellipsis,
    );
  }

  CustomText newsSubtitle() {
    return CustomText(
          text: article.subtitle ?? '',
          maxLines: 2,
          color: Colors.grey,
          textOverflow: TextOverflow.ellipsis,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        );
  }


}
