import 'package:flutter/material.dart';
import 'package:flutter_familia/components/boton_principal.dart';
// import 'package:flutter_familia/theme/mytheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          BotonPrincipal(
            foto: 'assets/images/avatar.jpg',
            nombre: 'Luis Fernando Mayta Campos',
            dni: '41887192-05',
          ),
          BotonPrincipal(
            foto: 'assets/images/avatar.jpg',
            nombre: 'Lucy Marisol Sanchez Torres',
            dni: '41253675',
          ),
          BotonPrincipal(
            foto: 'assets/images/avatar.jpg',
            nombre: 'Francisco Jese Mayta Sanchez',
            dni: '90999884',
          )
        ],
      ),
    );
  }
}
