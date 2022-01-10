import 'package:flutter/material.dart';
import 'package:flutter_familia/route/app_routes.dart';
import 'package:flutter_familia/theme/mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.base,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute:AppRoutes.onGenerateRoute
      //Cuando es la misma variable que envias a la que recibes, se pude moitir y enviar por referencia
    );
  }
}
