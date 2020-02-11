import 'package:flutter/material.dart';

class Lat3 extends StatefulWidget {
  @override
  _Lat3State createState() => _Lat3State();
}

class _Lat3State extends State<Lat3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Use Lists"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Map"),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text("Album"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
          )
        ],
      ),
    );
  }
}
