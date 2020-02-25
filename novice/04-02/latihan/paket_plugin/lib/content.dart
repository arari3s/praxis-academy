import 'package:css_colors/css_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// css Colors
class DemoPageCSS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CSS COLORS"),
      ),
      body: Container(
        color: CSSColors.orange,
      ),
    );
  }
}

class DemoPageURL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchURL() {
      launch('https://flutter.dev');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("URL LAUNCHER"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: launchURL,
          child: Text("Show Flutter Homepage"),
        ),
      ),
    );
  }
}
