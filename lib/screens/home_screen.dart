import 'package:flutter/material.dart';
import 'package:flutter_base/theme/mytheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('titulo 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Body 1'),
            Text(
              'Body 2',
              style: MyTheme.base.textTheme.headline1,
            ),
            Text(
              'Body 3',
              style: MyTheme.base.textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
