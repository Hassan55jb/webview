import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  WebViewScreen({super.key});

  TextEditingController searchcontroller = TextEditingController();
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://google.com'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web App'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
