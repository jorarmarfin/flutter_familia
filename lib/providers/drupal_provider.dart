import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DrupalProvider extends ChangeNotifier {
  // final String _baseUrl = 'familia.sahost.org';
  final String _apiToken = 'Basic dXNlcl9yZXN0OkFqSG9sOFR3YWM=';

  DrupalProvider() {
    print('DrupalProvider');
    getMiembro();
  }
  getMiembro() async {
    var url =
        Uri.parse('https://familia.sahost.org/api/miembro/1?_format=json');
    final response = await http.get(url, headers: {
      'Authorization': _apiToken,
    });
    final data = jsonDecode(response.body);
    final json = data[0];
    print('Response status: ${response.statusCode}');
    print('Response body2: ${data[0]['nombre']}');
  }
}
