import 'package:flutter/material.dart';
import 'package:flutter_app/ButtomAndStateful.dart';
import 'package:flutter_app/NavigationAndRouts.dart';
import 'package:flutter_app/StatelessWidget.dart';

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
                  title: Text("Stateless Widgets"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget()));
              },
            ),
            // tombol 2
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text("Buttons and Stateful widgets"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AwesomeButton()));
              },
            ),
            // tombol 3
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text("Basic Navigation & Routes"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Menu2()));
              },
            )
          ],
        ),
      ),
    );
  }
}
