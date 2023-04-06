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
  TextEditingController _height = TextEditingController();
  TextEditingController _weight = TextEditingController();
  String _result = "";

  void bmi() {
    setState(() {
      double _h = double.parse(_height.text) / 100;
      double _w = double.parse(_weight.text);

      double _hh = _h * _h;

      double _bmi = _w / _hh;

      _result = "${_bmi}";
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Bmi Calc'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: _height,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Height',
                    hintText: 'Enter Height'),
              )),
          Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: _weight,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Weight',
                    hintText: 'Enter Weight'),
              )),
          ElevatedButton(
              onPressed: bmi,
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 18),
              )),
          Text(_result)
        ]),
      ),
    );
  }
}
