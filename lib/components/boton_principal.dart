import 'package:flutter/material.dart';
import 'package:flutter_familia/theme/mytheme.dart';

class BotonPrincipal extends StatelessWidget {
  final String foto;
  final String nombre;
  final String dni;
  const BotonPrincipal(
      {Key? key, required this.foto, required this.nombre, required this.dni})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 140.0,
      width: double.infinity,
      decoration: estiloBoton(),
      child: Stack(
        children: [
          Positioned(
            right: -100,
            child: Container(
              width: 250,
              height: 250,
              decoration: contenedorEstiloCircular(),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(foto))),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nombre,
                      style: MyTheme.base.textTheme.headline3,
                    ),
                    Text(dni, style: MyTheme.base.textTheme.headline3)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
