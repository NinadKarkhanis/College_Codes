import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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

        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello World 31011221031')),
      body: Center(
        child: Text(
          "My First App!!!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          backgroundColor: Colors.red,
          child: Icon(Icons.add_card_sharp),
          onPressed: () {
            // action on button press
          }),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              label: ("Home"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: ("Search"),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: ("Profile"),
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {}),
    );
  }
}
