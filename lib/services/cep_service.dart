// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nike_store/models/address.dart';

Future getAddress(String cep) async {
  var url = "https://viacep.com.br/ws/$cep/json/";

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    print(response.body);
    return Address.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Algo deu errado");
  }
}
