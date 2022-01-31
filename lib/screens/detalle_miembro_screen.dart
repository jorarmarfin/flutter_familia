import 'package:flutter/material.dart';
// import 'package:flutter_familia/models/models.dart';
import 'package:flutter_familia/providers/providers.dart';

import 'package:flutter_familia/theme/mytheme.dart';
import 'package:provider/provider.dart';

class DetalleMiembroScreen extends StatefulWidget {
  const DetalleMiembroScreen({Key? key}) : super(key: key);

  @override
  State<DetalleMiembroScreen> createState() => _DetalleMiembroScreenState();
}

class _DetalleMiembroScreenState extends State<DetalleMiembroScreen> {
  @override
  Widget build(BuildContext context) {
    // final MiembroIdModels miembroId =
    //     ModalRoute.of(context)?.settings.arguments as MiembroIdModels;
    Color myColor = mPrimaryColor;
    final drupalProvider = Provider.of<DrupalProvider>(context);
    print(drupalProvider.miembroCurrent.nombre);
    // MiembroModels miembro;

    // drupalProvider.getMiembro().then((data) {
    //   nombreMiembro = data.nombre;
    // });

    // switch (miembroId.nid) {
    //   case '1':
    //     {
    //       myColor = mColorLuis2;
    //     }
    //     break;

    //   case '2':
    //     {
    //       myColor = mColorLucy2;
    //     }
    //     break;
    //   case '3':
    //     {
    //       myColor = mColorFran2;
    //     }
    //     break;
    // }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Image(
          //   image: AssetImage(miembroId.fondo),
          //   fit: BoxFit.cover,
          //   width: double.infinity,
          // ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: _HeaderPainter(myColor),
            ),
          ),
          Hero(
            tag: 'dni-41887192',
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(child: Text(drupalProvider.miembroCurrent.nombre)),
                  CircleAvatar(
                    maxRadius: 70,
                    backgroundImage: AssetImage(fotoLuis),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _HeaderPainter extends CustomPainter {
  // ignore: prefer_typing_uninitialized_variables
  final _color;

  _HeaderPainter(this._color);

  @override
  void paint(Canvas canvas, Size size) {
    final pencil = Paint();
    pencil.color = _color;
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 5;

    final path = Path();
    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.7, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
