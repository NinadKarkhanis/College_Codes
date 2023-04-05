import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yo",
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/2': (context) => SecScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<HomeScreen> {
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
        title: Text('Gesture Detector'),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
          child: Text(
            'Ben 10',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: GestureDetector(
            onLongPress: () {
              Navigator.pushNamed(context, '/2');
            },
            child: Image.network(
                'https://www.nicepng.com/png/detail/860-8604396_ben-tennyson-ben-10-omniverse-ben.png'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Long press the image',
            style: TextStyle(fontSize: 20),
          ),
        )
      ]),
    );
  }
}

class SecScreen extends StatefulWidget {
  @override
  MyState2 createState() => MyState2();
}

class MyState2 extends State<SecScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Info"),
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(15, 170, 15, 100),
            child: Text(
                'When his father died, Denji was stuck with a huge debt and no way to pay it back. ' +
                    'Thanks to the help of a Devil dog he saved named Pochita, though, Denji is able to scrape by as a Devil Hunter working for the Yakuza. When the mob betrays Denji and hes killed by a Devil, Pochita sacrifices himself to revive his former master. Now Denji has been reborn as some kind of weird Devil-Human hybrid.\n' +
                    'He is now Chainsaw Man!',
                style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff000000),
                ))));
  }
}
