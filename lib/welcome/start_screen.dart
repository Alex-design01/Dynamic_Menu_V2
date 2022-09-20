import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Icon(Icons.person),
      ),
    ));
  }
}
