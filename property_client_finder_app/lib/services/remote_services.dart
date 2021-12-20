// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:get/get_connect.dart';
import 'package:http/http.dart' as http;
import 'package:property_client_finder_app/models/product.dart';
import 'package:property_client_finder_app/models/register_failure.dart';
import 'package:property_client_finder_app/models/register_model.dart';

class RemoteServices {
  static var client = http.Client();
  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      return [];
    }
  }

  static Future registerBroker(var email, var username, var password) async {
    try {
      Map data = {'email': email, 'username': username, 'password': password};
      var body = json.encode(data);
      final response = await http.post(
        Uri.parse('http://10.0.2.2:3005/api/v1/registerBroker'),
        headers: <String, String>{
          'Content-Type': 'Application/json; charset=UTF-8',
        },
        body: body,
      );
      return response;
      // if (response.statusCode == 200) {
      //   var results = json.decode(response.body);
      //   // var results = Register.fromJson(jsonDecode(response.body));
      //   // var results = RegregisterFromJson(response.body);
      //   return results;
      // } else if (response.statusCode == 400) {
      //   var results = json.decode(response.body);
      //   // var results = RegisterFailure.fromJson(jsonDecode(response.body));
      //   // // var results = json.decode(response.body);
      //   return results;
      // }
    } finally {}

    // print(response);
  }

  static Future loginUser(var email, var password) async {
    try {
      Map data = {'email': email, 'password': password};
      var body = json.encode(data);
      final response = await http.post(
        Uri.parse('http://10.0.2.2:3005/api/v1/loginBroker'),
        headers: <String, String>{
          'Content-Type': 'Application/json; charset=UTF-8',
        },
        body: body,
      );
      return response;
    } catch (e) {
      return e;
    }
  }
}
