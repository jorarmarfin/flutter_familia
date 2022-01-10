import 'package:flutter/material.dart';

class DetalleMiembroScreen extends StatelessWidget {
  const DetalleMiembroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de miembro'),
      ),
      body: const Center(
        child: Text('DEtalle de miembro'),
      ),
    );
  }
}
