import 'package:flutter/material.dart';

//imported google's material design library
void main() {
  runApp(
      /**Our App Widget Tree Starts Here**/
      MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('GeeksforGeeks'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ), //AppBar
      body: Center(
        /** Card Widget   MAIN HERE!!!!!!!!! **/
        child: Card(
            child:
                Column(mainAxisSize: MainAxisSize.min, children: const <Widget>[
          ListTile(
            leading: Icon(Icons.album, size: 45),
            title: Text('Sonu Nigam'),
            subtitle: Text('Best of Sonu Nigam Song'),
          )
        ])), //Card
      ), //Center
    ), //Scaffold
  ) //MaterialApp
      );
}

REFER:- https://www.javatpoint.com/flutter-card
//A card is a sheet used to represent the information related to each other, such as an album, a geographical location, contact details, etc.
//A card in Flutter is in rounded corner shape and has a shadow. We mainly used it to store the content and action of a single object. 
//In this article, we are going to learn how to create a card widget in Flutter. We will also learn how to customize the card widget.

//Card creation in Flutter is very simple. We just need to call the card constructor and then pass a widget as child property for displaying the content and 
//action inside the card.
