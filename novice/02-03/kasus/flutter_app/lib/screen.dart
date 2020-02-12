import 'package:flutter/material.dart';
import 'package:flutter_app/menu.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((val) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => Menu()), (e) => false);
    });

    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset(
            "img/1.png",
            width: 200,
          ),
        ),
      ),
    );
  }
}
