import 'package:flutter/material.dart';
import 'package:flutter_familia/theme/mytheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20.0),
            height: 150.0,
            width: double.infinity,
            decoration: estiloBoton(),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/avatar.jpg'))),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Luis Fernando Mayta Campos',
                        style: MyTheme.base.textTheme.headline3,
                      ),
                      Text('41887192', style: MyTheme.base.textTheme.headline3)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
