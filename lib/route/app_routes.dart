import 'package:flutter/material.dart';
import 'package:flutter_familia/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'detalle_miembro': (BuildContext context) => const DetalleMiembroScreen()
  };
}
