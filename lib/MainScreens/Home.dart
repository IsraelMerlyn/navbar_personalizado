import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navbar_personalizado/MainScreens/Menu_Home.dart';
import 'package:navbar_personalizado/Utils/Menu_Lateral.dart';

class HomeScreens extends StatefulWidget {
  HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    //ANADIENDO STACK PARA ANADIR UNA FONDO
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _CrearFondo(context),
        ],
      ),
      appBar: AppBar(),
      drawer: MenuHome(),
    );

    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Center(),
    // );
  }
}

final MenuL = SafeArea(
  child: Scaffold(),
);

Widget _CrearFondo(BuildContext context) {
  //DECLARAMOS EL MEDIAQUERY PARA OBTENER EL PORCENTAJE DEL FONDO(CONTENEDOR) A ANADIR
  final size = MediaQuery.of(context).size;
  //DECLARAMOS UNA VARIABLE QUE ALMACENARA EL CONTENEDOR DE LA IMAGEN CON EL FONDO
  //return Container(
  final FondoHome = Container(
    height: size.height * 0.4,
    width: double.infinity,
    decoration: BoxDecoration(
        gradient: LinearGradient(
      //DECLARANDO LOS COLORES DEL CONTAINER
      colors: <Color>[
        Color.fromRGBO(63, 63, 156, 1.0),
        Color.fromRGBO(90, 70, 178, 1.0),
      ],
    )),
  );

  //METODO QUE CREARA LAS FIGURAS
  // ignore: dead_code
  final Ciruculos = Container(
    width: 100.0,
    height: 100.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: Color.fromRGBO(255, 255, 255, 0.05),
    ),
  );
//METODO QUE CREA LOS ARGUMENTOS
  final Argumentos = Container(
    padding: EdgeInsets.only(top: 80.0),
    child: Column(
      children: <Widget>[
        //DEFINIENDO EL ICONO DEL HOME
        Icon(Icons.account_balance_rounded, color: Colors.white, size: 100.0),
        //DEFINIENDO ESPACIO ENTRE EL ICONO Y EL TEXTO
        SizedBox(height: 10.0, width: double.infinity),
        //DEFINIENDO EL TEXTO
        Text(
          'Derechos Humanos de Zacatecas',
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ],
    ),
  );
  //RETORNA LAS FUNCIONES
  return Stack(
    children: <Widget>[
      FondoHome,
      //POSICIONAMOS LAS FIGURAS
      Positioned(child: Ciruculos, top: 90.0, left: 30.0),
      Positioned(child: Ciruculos, top: -40.0, left: -30.0),
      Positioned(child: Ciruculos, bottom: 220.0, right: -10.0),
      Positioned(child: Ciruculos, bottom: -50.0, right: -10.0),
      Argumentos
    ],
  );
}
