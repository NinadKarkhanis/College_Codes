import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String btnname = "CLICK";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nnk'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
            child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    btnname = 'mid';
                  });
                },
                child: Text(btnname),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    btnname = 'mid';
                  });
                },
                child: Text(btnname),
              ),
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'Catch',
                icon: Icon(
                  Icons.catching_pokemon_outlined,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home_max_sharp, color: Colors.black)),
            BottomNavigationBarItem(
                label: 'Profiles',
                icon: Icon(Icons.people, color: Colors.black)),
            BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings, color: Colors.black))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          backgroundColor: Colors.deepOrange,
        ),
      ),
    );
  }
}
