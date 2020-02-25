import 'package:flutter/material.dart';
import 'package:paket_plugin/content.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    ));

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paket dan Plugin"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text(
                    "CSS COLORS",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DemoPageCSS()));
              },
            ),
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text(
                    "URL LAUNCHER",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DemoPageURL()));
              },
            )
          ],
        ),
      ),
    );
  }
}
