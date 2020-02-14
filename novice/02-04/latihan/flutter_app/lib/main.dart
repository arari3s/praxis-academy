import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          InkWell(
            child: Container(
              height: 50,
              color: Colors.blue[300],
              child: Center(
                child: Text(
                  "Hero",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              height: 50,
              color: Colors.blue[200],
              child: Center(
                child: Text(
                  "SlideTransition",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              height: 50,
              color: Colors.blue[100],
              child: Center(
                child: Text(
                  "AnimatedOpacity",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FadeLogo()));
            },
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  var buah = ['1.jpeg', '2.jpg', '3.jpeg', '4.jpeg', '5.jpeg', '6.jpeg'];
  var namanya = ['Jeruk', 'Apel', 'Anggur', 'Durian', 'Alpukat', 'Nanas'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftra Nama Buah"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: buah.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Hero(
                tag: namanya[index],
                child: Image.asset('asset/' + buah[index]),
              ),
              title: Text(namanya[index]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailBuah(
                            'asset/' + buah[index], namanya[index])));
              },
            );
          },
        ),
      ),
    );
  }
}

class DetailBuah extends StatelessWidget {
  String buah;
  String namanya;

  DetailBuah(this.buah, this.namanya);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namanya),
      ),
      body: ListView(
        children: <Widget>[
          Hero(
            tag: namanya,
            child: Image.asset(buah),
          ),
          Center(
            child: Text(
              namanya,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen extends StatefulWidget {
  Screen({Key key}) : super(key: key);
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _offsetAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(1.5, 0.0))
            .animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SlideTransition"),
      ),
      body: SlideTransition(
        position: _offsetAnimation,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              children: <Widget>[
                FlutterLogo(
                  size: 150.0,
                ),
                Text(
                  "Flutter App",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FadeLogo extends StatefulWidget {
  @override
  _FadeLogoState createState() => _FadeLogoState();
}

class _FadeLogoState extends State<FadeLogo> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedOpacity"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: Duration(seconds: 1),
            child: FlutterLogo(
              size: 300,
            ),
          ),
          RaisedButton(
            child: Text("Fade Logo"),
            onPressed: _changeOpacity,
          )
        ],
      ),
    );
  }
}
