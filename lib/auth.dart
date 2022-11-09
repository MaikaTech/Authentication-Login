import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> auth(String email) async {
  String url = "https://jollytech.000webhostapp.com/verify_niervo.php";
  var resp = await http.post(Uri.parse(url), body: {'email': email});
  var response = json.decode(resp.body);
  print(response);
  return response.toString();
}
