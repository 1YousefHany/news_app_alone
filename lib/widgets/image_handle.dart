import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:news_app_alone/helper/constants.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'package:news_app_alone/widgets/custom_circular_indicator.dart';

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
          ? const Icon(
              Icons.error,
              color: kPrimaryColor,
              size: 50,
            )
          : CachedNetworkImage(
              imageUrl: article.image!,fit: BoxFit.fill,
              placeholder: (context, url) => const CustomCircularIndicator(),
              errorWidget: (context, url, error) => kNoImage,
              cacheManager: CacheManager(
                Config('imageCache',
                    stalePeriod: const Duration(days: 5),
                    maxNrOfCacheObjects: 50),
              ),
            ),
    );
  }

  // FutureBuilder<void> handleErrWidget(String url) {
  //   return FutureBuilder<void>(
  //       future: _retryLoadingImage(url),
  //       builder: (context, snapshot) {
  //         if(snapshot.hasError){
  //           return const Icon(
  //           Icons.error,
  //           color: kPrimaryColor,
  //           size: 50,
  //           );
  //         }
  //         else if (snapshot.connectionState == ConnectionState.waiting) {
  //           return const CustomCircularIndicator();
  //         }  else if (snapshot.connectionState == ConnectionState.none) {
  //           return const Icon(
  //             Icons.error,
  //             color: kPrimaryColor,
  //           );
  //         } else if (snapshot.hasError || snapshot.error == ClientException) {
  //           return const Icon(
  //             Icons.error,
  //             color: kPrimaryColor,
  //           );
  //         } else if(snapshot.connectionState == ConnectionState.done){
  //           return CachedNetworkImage(imageUrl: url);
  //         } else {
  //           return Image.asset('assets/images/noNewsImage.jpg');
  //         }
  //       });
  // }

  // Future<void> _retryLoadingImage(String url) async {
  //   const r = RetryOptions(maxAttempts: 3);
  //   await r.retry(
  //       () =>
  //           CachedNetworkImageProvider(url).resolve(const ImageConfiguration()),
  //       retryIf: (e) => e is SocketException || e is ClientException);
  // }
}
