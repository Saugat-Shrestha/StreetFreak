import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedBar = 0;

  void _barSelected(int index) {
    setState(() {
      _selectedBar = index;
    });
  }

  final List<Widget> _children = [
    Text("hello"),
    Text("hello"),
    Text("World"),
    Text("hello"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedBar],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: _barSelected,
        backgroundColor: Color(0xFFF5F5F3),
        buttonBackgroundColor: Colors.amber,
        animationDuration: Duration(milliseconds: 500),
        items: [
          Icon(Icons.home),
          Icon(Icons.dining_outlined),
          Icon(Icons.event_available),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
