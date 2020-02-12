import 'package:flutter/material.dart';
import 'package:flutter_app/menu2/RoutesStf.dart';
import 'package:flutter_app/menu2/RoutesStl.dart';

class Menu2 extends StatefulWidget {
  @override
  _Menu2State createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Navigation & Routes"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text("Simple routes using StatelessWidget"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text("Routes using StatefulWidget"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            )
          ],
        ),
      ),
    );
  }
}
