import 'package:flutter/material.dart';
import 'package:news_app_alone/widgets/custom_linear_progress_indicator.dart';
import 'package:news_app_alone/widgets/main_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatefulWidget {
  const NewsWebView({
    super.key,
    required this.url,
    required this.context,
  });

  final String url;
  final BuildContext context;
  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  int loadingProgress = 0;
 late WebViewController controller ;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            loadingProgress = progress;
            setState(() {});
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            loadingProgress = 100;
            setState(() {});
          },
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {
      //      customShowSnackBar(error.description, widget.context);
    //        debugPrint(error.description);
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
         MainAppBar(
          bottom : loadingProgress < 100
        ? PreferredSize(
        preferredSize: const Size.fromHeight(3),
        child: CustomLinearProgressIndicator(
            loadingProgress: loadingProgress),
      )
          : null,
        ),
      body: WebViewWidget(controller: controller),
    );
  }
}
