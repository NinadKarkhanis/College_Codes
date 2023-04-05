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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sign In (31011221031)')),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Sign In'),
                  onPressed: () {},
                ),
              ],
            )),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.catching_pokemon_outlined),
            onPressed: () {}));
  }
}
