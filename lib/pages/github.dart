import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubPage extends StatefulWidget {
  GitHubPage({Key? key}) : super(key: key);

  @override
  State<GitHubPage> createState() => _GitHubPageState();
}

class _GitHubPageState extends State<GitHubPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
            'Github',
            style:  TextStyle(fontSize: 14),
          ),
      ),
      body: const WebView(
        initialUrl: 'https://github.com/Karumaidoi',
        ),
    );
  }
}