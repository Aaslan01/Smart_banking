import 'package:flutter/material.dart';
import 'FrontView.dart';

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFafa6db),
        scaffoldBackgroundColor: Color(0xFFafa6db),
        accentColor: Colors.black,
        backgroundColor: Color(0xFFafa6db),
      ),
      home: FrontView(),
    );
  }
}
