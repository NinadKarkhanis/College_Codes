import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() =>
    runApp(MaterialApp(title: "animation", initialRoute: '/', routes: {
      "/": (context) => AnimatedContainerPage(),
      'next': (content) => Next(),
    }));

class AnimatedContainerPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.deepOrange;
  Color _bcolor = Color(0xfffffafa);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedContainer(
            width: _width,
            height: _height,
            color: _color,
            duration: Duration(milliseconds: 250),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'next');
            },
            child: Icon(Icons.catching_pokemon),
            style: ElevatedButton.styleFrom(
              primary: _bcolor,
              padding: EdgeInsets.all(0),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _update,
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 255, 128, 0),
      ),
    );
  }

  void _update() {
    setState(() {
      if (_color == Color.fromARGB(255, 226, 11, 4)) {
        _width = 300;
        _height = 300;
        _color = Color.fromARGB(255, 255, 115, 0);
        _bcolor = Colors.black;
        curve:
        Curves.easeInOutCubic;
      } else {
        _width = 200;
        _height = 200;
        _color = Color.fromARGB(255, 226, 11, 4);
        _bcolor = Colors.white;
        curve:
        Curves.easeOutCubic;
      }
    });
  }
}

class Next extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("On Icon Click (31011221031)"),
            backgroundColor: Colors.deepOrange),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            child: const Text("Home"),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange,
            ),
          ),
        ));
  }
}
