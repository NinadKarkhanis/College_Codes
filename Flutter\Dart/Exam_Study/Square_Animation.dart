import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _height = 200;
  double _weight = 200;
  Color _color = Colors.red;

  void animate() {
    setState(() {
      if (_color == Colors.red) {
        _height = 400;
        _weight = 450;
        _color = Colors.black;
      } else {
        _height = 200;
        _weight = 200;
        _color = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Square Animation'),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 4),
              height: _height,
              width: _weight,
              color: _color,
            ),
            ElevatedButton(onPressed: animate, child: const Text("Press"))
          ]),
        ));
  }
}
