import 'package:flutter/material.dart';
import 'package:flutter_familia/models/miembro_model.dart';
import 'package:flutter_familia/theme/mytheme.dart';

class DetalleMiembroScreen extends StatelessWidget {
  const DetalleMiembroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MiembroModel miembro =
        ModalRoute.of(context)?.settings.arguments as MiembroModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
        backgroundColor: mColorLuis2,
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: mColorFondo,
            height: double.infinity,
          ),
          Container(
            color: mColorLuis2,
            height: 150,
          ),
          ListView(
            padding: const EdgeInsets.all(10),
            children: [
              _Datos(
                mylabel: 'Nombre completo',
                myvalor: miembro.nombre,
              ),
              _Datos(
                mylabel: 'DNI',
                myvalor: miembro.dni,
              ),
              const _Datos(
                mylabel: 'Peso nacimiento',
                myvalor: '51',
              ),
              const _Datos(
                mylabel: 'Altura nacimiento',
                myvalor: '51',
              ),
              const _Datos(
                mylabel: 'Fecha nacimiento',
                myvalor: '51',
              ),
              const _Datos(
                mylabel: 'Tipo de Sangre',
                myvalor: '51',
              ),
              const Card(
                child: ListTile(
                  title: Text('Vacuna contra el covid'),
                  textColor: mColorNegro,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Datos extends StatelessWidget {
  final String mylabel;
  final String myvalor;
  const _Datos({
    Key? key,
    required this.mylabel,
    required this.myvalor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(mylabel + ' : ' + myvalor),
        textColor: mColorNegro,
      ),
    );
  }
}
