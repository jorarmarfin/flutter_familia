import 'package:flutter/material.dart';
import 'package:flutter_familia/components/boton_principal.dart';
import 'package:flutter_familia/theme/mytheme.dart';
// import 'package:flutter_familia/theme/mytheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BotonPrincipal(
            foto: fotoLuis,
            nombre: 'Luis Fernando Mayta Campos',
            dni: '41887192-05',
            color1: mColorLuis1,
            color2: mColorLuis2,
            onPress: () {
              debugPrint('Luis');
            },
          ),
          BotonPrincipal(
              foto: fotoLucy,
              nombre: 'Lucy Marisol Sanchez Torres',
              dni: '41253675',
              color1: mColorLucy1,
              color2: mPrimaryColor,
              onPress: () {
                debugPrint('Lucy');
              }),
          BotonPrincipal(
              foto: fotoFrancisco,
              nombre: 'Francisco Jese Mayta Sanchez',
              dni: '90999884-06',
              color1: mColorFran1,
              color2: mColorFran2,
              onPress: () {
                debugPrint('Francisco');
              })
        ],
      ),
    );
  }
}
