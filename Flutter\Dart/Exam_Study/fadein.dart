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


double _opacity = 0.0;


class Myhomestate extends State<Myhome> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.network(img_url),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _opacity = 1.0;
              });
            },
            child: Text("know more")),
        AnimatedOpacity(
          duration: Duration(seconds: 5),
          opacity: _opacity,
          child: Text("strawhat"),
        )
      ]),
    );
  }
}
