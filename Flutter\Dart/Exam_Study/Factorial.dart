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
  TextEditingController _numcon = TextEditingController();

  String _result = "";

  void _calc() {
    setState(() {
      int _num = int.parse(_numcon.text);
      int _factorial = 1;

      for (int i = _num; i >= 1; i--) {
        _factorial *= i;
      }

      _result = "${_factorial}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factorial'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              controller: _numcon,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Factorial',
                  hintText: 'Enter Number'),
            ),
          ),
          ElevatedButton(onPressed: _calc, child: const Text("Submit")),
          Text(
            'Answer :' + _result,
            style: TextStyle(fontSize: 20),
          ),
        ]),
      ),
    );
  }
}
