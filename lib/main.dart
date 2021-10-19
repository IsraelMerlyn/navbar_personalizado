// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navbar_personalizado/MainScreens/Home.dart';
import 'package:navbar_personalizado/Utils/AssetsImages.dart';
import 'package:navbar_personalizado/Utils/Constantes.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePages(),
      //title: 'Derechos Humanos',

      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Bienvenidos'),
      //   ),
      //   body: Center(
      //     // ignore: avoid_unnecessary_containers
      //     child: Container(
      //       child: Text('Hola Mundo'),
      //     ),
      //   ),
      // ),
    );
  }
}

class MyHomePages extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePages> {
  Widget build(BuildContext context) {
    //LLAMANDO A NUESTRO SPLASHSCREEN AL INICIO
    return SplashScreen(
      //LLAMANDO A NUESTRA VARIABLE CONSTANTE DE LA CLASE UTILS
      seconds: ConstantesApp.TIME_SPLASH_SCREEN,
      navigateAfterSeconds: HomeScreens(),
      image: AssetImages.ImagenLogo(),
    );
  }
}
