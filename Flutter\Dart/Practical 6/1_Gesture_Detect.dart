import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Navigation with Gesture Detector',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => InfoScreen(),
      },
    ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Chainsaw-Man (31011221031)"),
          backgroundColor: Color(0xffff6702)),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Text(
              'Denji',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onLongPress: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Image.network(
                  'https://preview.redd.it/denji-chainsaw-man-concept-unit-v0-agemp1tafsw91.png?width=1920&format=png&auto=webp&s=31b55fba11b759a92d7e63807703b2ca235c1cec'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Long Press the image to know more',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Information of the Character"),
          backgroundColor: Color(0xffff6702)),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 170, 15, 100),
        child: Text(
            'When his father died, Denji was stuck with a huge debt and no way to pay it back. ' +
                'Thanks to the help of a Devil dog he saved named Pochita, though, Denji is able to scrape by as a Devil Hunter working for the Yakuza. When the mob betrays Denji and hes killed by a Devil, Pochita sacrifices himself to revive his former master. Now Denji has been reborn as some kind of weird Devil-Human hybrid.\n' +
                'He is now Chainsaw Man!',
            style: TextStyle(
              fontSize: 23,
              color: Color(0xff000000),
            )),
      ),
    );
  }
}
