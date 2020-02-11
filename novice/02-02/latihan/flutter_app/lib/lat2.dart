import 'package:flutter/material.dart';

class Lat2 extends StatefulWidget {
  @override
  _Lat2State createState() => _Lat2State();
}

class _Lat2State extends State<Lat2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouts in Flutter"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Image.asset("img/1.png"),
                SizedBox(
                  height: 10,
                ),
                Image.asset("img/2.png"),
                SizedBox(
                  height: 10,
                ),
                Image.asset("img/3.png"),
                SizedBox(
                  height: 10,
                ),
                Image.asset("img/4.png"),
                SizedBox(
                  height: 10,
                ),
                Image.asset("img/5.png"),
                SizedBox(
                  height: 10,
                ),
                Image.asset("img/6.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
