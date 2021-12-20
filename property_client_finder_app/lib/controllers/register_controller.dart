import 'package:get/state_manager.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:email_validator/email_validator.dart';
import 'package:property_client_finder_app/models/register_model.dart';
import 'package:property_client_finder_app/services/remote_services.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterController extends GetxController {
  // final registerFormKey = GlobalKesy<FormState>();
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  var email = "";
  var username = "";
  var password = "";
  // var errors=Map<string,dynamic>.[].obs();

  // Map<String, List> errors = {}.obs();
  // List<Map<String, dynamic>> errors.Obs();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    // emailController.dispose();
    // passwordController.dispose();
    // usernameController.dispose();
    super.onClose();
  }

  String? validateEmail(String? value) {
    if (!EmailValidator.validate(value!)) {
      return "Please enter email";
    }
    return null;
  }

  String? validateUsername(String? value) {
    if (value!.isEmpty) {
      return "Username cannot be empty";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value!.length < 8) {
      return "Password must be at least 8 character long";
    }
    return null;
  }

  void registerUser() async {
    var valid = registerFormKey.currentState!.validate();
    if (!valid) {
      return;
    }
    registerFormKey.currentState!.save();
    var response =
        await RemoteServices.registerBroker(email, username, password);
    if (response.statusCode == 200) {
      var results = RegisterSuccess.fromJson(json.decode(response.body));
      print(results);
      // var results = json.decode(response.body);
    }
    if (response.statusCode == 400) {
      var results = json.decode(response.body);
      // print(results["errors"][0]["message"]);
      Get.snackbar('Email', results["errors"][0]["message"],
          snackPosition: SnackPosition.TOP,
          margin: const EdgeInsets.symmetric(vertical: 65, horizontal: 10),
          colorText: Colors.white,
          // messageText: TextStyle(fontWeight: ),
          backgroundColor: Colors.green,
          icon: const Icon(
            Icons.person,
            color: Colors.white,
          ));
    }
  }
}
