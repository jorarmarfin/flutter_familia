import 'package:flutter/material.dart';
import 'package:flutter_familia/theme/mytheme.dart';

class DetalleMiembroScreen extends StatelessWidget {
  const DetalleMiembroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de miembro'),
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: AssetImage(fotoLuis),
        ),
      ),
    );
  }
}
