// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenidos'),
        ),
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
