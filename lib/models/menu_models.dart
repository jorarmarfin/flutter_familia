import 'package:flutter/material.dart' show IconData, Widget;

class MenuModels {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuModels(this.route, this.icon, this.name, this.screen);
}
