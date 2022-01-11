import 'package:flutter/material.dart';
import 'package:flutter_familia/models/miembro_model.dart';

class DetalleMiembroScreen extends StatelessWidget {
  const DetalleMiembroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MiembroModel miembro =
        ModalRoute.of(context)?.settings.arguments as MiembroModel;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(miembro.nombre),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
          ]))
        ],
      ),
    );
  }
}
