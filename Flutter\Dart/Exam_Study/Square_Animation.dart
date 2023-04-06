import 'package:flutter/material.dart';


void main() => runApp(MyApp());
const img_url =
    'https://www.pngkey.com/png/detail/61-612294_anime-manga-animeboy-one-piece-luffy-manga-anime.png';


class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello",
      theme: ThemeData(brightness: Brightness.dark),
      home: Myhome(),
    );
  }
}


class Myhome extends StatefulWidget {
  Myhomestate createState() => Myhomestate();
}


double _height = 100;
double _width = 100;
Color _color = Colors.red;


class Myhomestate extends State<Myhome> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 4),
            height: _height,
            width: _width,
            color: _color,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: update,
        child: Icon(Icons.play_arrow),
      ),
    );
  }


  void update() {
    setState(() {
      if (_color == Colors.red) {
        _height = 200;
        _width = 200;
        _color = Colors.blue;
      } else {
        _height = 100;
        _width = 100;
        _color = Colors.red;
      }
    });
  }
}



