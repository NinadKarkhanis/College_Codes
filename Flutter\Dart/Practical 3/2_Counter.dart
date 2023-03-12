import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name

      title: 'Flutter Stateful Clicker Counter',

      theme: ThemeData(
        // Application theme data, you can set the colors for the application as

        // you want

        primarySwatch: Colors.deepOrange,
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var counter = 0;

  void incrementCounter() {
    setState(() {
      counter = counter + 1;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 205, 48, 0),
        appBar: AppBar(title: Text('Counter Application (31011221031)')),
        body: Center(
          child: Text(
            "Number of file(s) uploaded: $counter",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 25.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.upload_file_outlined),
            onPressed: incrementCounter));
  }
}
