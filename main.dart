import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class Mega extends StatefulWidget {
  @override
  _MegaState createState() => _MegaState();
}

class _MegaState extends State<Mega> {
  int _current = 0;
  final List<Widget>_children=[
    Contain(),
    Search(),
    Featured(),
    Profile(),

  ];
  void ontapbar(int index){
    setState(() {
      _current=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:_children[_current],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey,

        currentIndex: _current,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              (Icons.home),

            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (Icons.search_outlined),

            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (Icons.star_border_purple500_sharp),

            ),
            label: 'Featured',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (Icons.person),

            ),
            label: 'Profile',
          ),

        ],
        onTap: ontapbar,

      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      home: Mega(),
    );
  }
}

