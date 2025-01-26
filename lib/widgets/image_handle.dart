import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'package:news_app_alone/widgets/custom_circular_indicator.dart';
import 'package:retry/retry.dart';

class ImageHandle extends StatelessWidget {
  const ImageHandle({
    super.key,
    required this.article,
  });

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: article.image == null || article.image!.isEmpty
            ? const Icon(Icons.error)
            : CachedNetworkImage(
                imageUrl: article.image!,
                placeholder: (context, url) => const CustomCircularIndicator(),
                errorWidget: (context, url, error) => handleErrWidget(url),
                cacheManager: CacheManager(
                  Config('imageCache',
                      stalePeriod: const Duration(days: 5),
                      maxNrOfCacheObjects: 50),
                ),
              ));
  }

  FutureBuilder<void> handleErrWidget(String url) {
    return FutureBuilder<void>(
        future: _retryLoadingImage(url),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CustomCircularIndicator();
          } else if (snapshot.hasError) {
            return const Icon(
              Icons.error,
              color: Colors.red,
            );
          } else {
            return CachedNetworkImage(imageUrl: url);
          }
        });
  }

  Future<void> _retryLoadingImage(String url) async {
    const r = RetryOptions(maxAttempts: 3);

    await r.retry(
        () =>
            CachedNetworkImageProvider(url).resolve(const ImageConfiguration()),
        retryIf: (e) => e is SocketException || e is ClientException);
  }
}
