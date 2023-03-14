import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('Welcome ',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Card(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
            child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                children: [
              Card(
                color: Color.fromARGB(255, 243, 185, 122),
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.tv, size: 50),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Item 1',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 132, 0),
                      ),
                    ),
                    Text('',
                        style: TextStyle(
                          fontSize: 3,
                        ))
                  ],
                )),
              ),
              Card(
                color: Color.fromARGB(255, 243, 185, 122),
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.catching_pokemon, size: 50),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Item 2',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 132, 0),
                      ),
                    ),
                    Text('',
                        style: TextStyle(
                          fontSize: 3,
                        ))
                  ],
                )),
              ),
            ]))),
    Text('Payment',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
    Text('Profile Page\nMy name is Ninad',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Logout!',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Shopping App (31011221031)'),
          backgroundColor: Colors.deepOrange),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.deepOrange),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: "Cart",
                backgroundColor: Colors.deepOrange),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee_sharp),
                label: "Payment",
                backgroundColor: Colors.deepOrange),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.deepOrange,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: "Logout",
              backgroundColor: Colors.deepOrange,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
