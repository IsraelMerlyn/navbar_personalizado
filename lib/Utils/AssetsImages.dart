import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class AssetImages {
  //DECLARACION DE LA RUTA ASSETS
  static final String path = "assets/images/";
  //DEFINIENDO METODO QUE ALMACENARA Y RETORNA LA IMAGEN
  static Image ImagenLogo() {
    return Image.asset("${path}ic_launcher.png");
  }

//DEFINIENDO METODO QUE ALMACENARA Y RETORNA EL LAUNCHER
  static Image ImagenLaucher() {
    return Image.asset("${path}ic_launcher.png");
  }
}
