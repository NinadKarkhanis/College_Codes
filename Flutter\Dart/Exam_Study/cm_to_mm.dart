import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _cmcontroller = TextEditingController();
  String _result = "";

  void _calc() {
    setState(() {
      double _centi = double.parse(_cmcontroller.text) * 10;
      _result = "${_centi}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Click Counter'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              controller: _cmcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'cm',
                  hintText: 'XXcm'),
            ),
          ),
          ElevatedButton(onPressed: _calc, child: const Text("Submit")),
          Text(
            'Answer :' + _result + " mm",
            style: TextStyle(fontSize: 20),
          ),
        ]),
      ),
    );
  }
}
