import 'package:flutter/material.dart';
import 'package:streetfreak/Pages/Home_Page.dart';
import 'package:streetfreak/Pages/Login/Signup/Login.dart';

void main() {
  runApp(const StreetFreak());
}

class StreetFreak extends StatelessWidget {
  const StreetFreak({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
