import 'package:flutter/material.dart';
import 'package:flutter_familia/screens/home_screen.dart';
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
      home: const HomeScreen(),
    );
  }
}
