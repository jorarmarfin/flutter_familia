import 'package:flutter/material.dart';
import 'package:flutter_familia/models/models.dart';
import 'package:flutter_familia/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuModels>[

    MenuModels('detalle_miembro','Detalle de miembro',const DetalleMiembroScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'detalle_miembro': (BuildContext context) => const DetalleMiembroScreen()
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
