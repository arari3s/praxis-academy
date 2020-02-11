import 'package:flutter/material.dart';
import 'package:flutter_app/lat1.dart';
import 'package:flutter_app/lat2.dart';
import 'package:flutter_app/lat3.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            // tombol 1
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text("Introduction to widgets"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Example()));
              },
            ),
            // tombol 2
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text("Layouts in Flutter"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Lat2()));
              },
            ),
            // tombol 3
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text("Use lists"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Lat3()));
              },
            )
          ],
        ),
      ),
    );
  }
}
