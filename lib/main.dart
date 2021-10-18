// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Derechos Humanos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenidos'),
        ),
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Text('Hola Mundo'),
          ),
        ),
      ),
    );
  }
}
