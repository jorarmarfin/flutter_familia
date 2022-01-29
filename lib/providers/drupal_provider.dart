import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_familia/models/models.dart';

class DrupalProvider extends ChangeNotifier {
  final String _baseUrl = 'https://familia.sahost.org';
  final String _apiToken = 'Basic dXNlcl9yZXN0OkFqSG9sOFR3YWM=';
  int _nid = 1;
 MiembroModels miembroCurrent = {} as MiembroModels;

  DrupalProvider();
  int get nid => _nid;
  set nid(int value) {
    _nid = value;
    getMiembro(value);
    notifyListeners();
  }

  getMiembro(int nid) async {
    var url = Uri.parse('$_baseUrl/api/miembro/$nid?_format=json');
    final response = await http.get(url, headers: {
      'Authorization': _apiToken,
    });
    final json = jsonDecode(response.body)[0];
    final str = jsonEncode(json);
    miembroCurrent = MiembroModels.fromJson(str);
    notifyListeners();
  }
}
