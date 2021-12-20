import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:email_validator/email_validator.dart';

import 'package:get/state_manager.dart';

import 'package:http/http.dart' as http;
import 'package:property_client_finder_app/navigation.dart';
import 'package:property_client_finder_app/screens/welcome_screen.dart';
import 'package:property_client_finder_app/services/auth_services.dart';
import 'dart:convert';

import 'package:property_client_finder_app/services/remote_services.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final box = GetStorage();

  var email = "";
  var password = "";
  final isAuthenticated = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? validateEmail(String? value) {
    if (!EmailValidator.validate(value!)) {
      return "Please enter email";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value!.length < 8) {
      return "Password must be at least 8 character long";
    }
    return null;
  }

  void loginUser() async {
    var valid = loginFormKey.currentState!.validate();
    if (!valid) {
      return;
    }
    loginFormKey.currentState!.save();
    var response = await RemoteServices.loginUser(email, password);
    if (response.statusCode == 200) {
      var results = json.decode(response.body);
      // print(results["token"]);
      await box.write('token', results["token"]);

      if (!(box.read('token').isEmpty)) {
        isAuthenticated.value = true;
        Get.off(WelcomeScreen());
      }
    }
    if ((response.statusCode == 400) ||
        (response.statusCode == 500) ||
        (response.statusCode == 422)) {
      await Get.dialog(AlertDialog(
        title: const Text('Login failed'),
        content: const Text('Invalid email or password,please try again'),
        actions: [
          TextButton(
              onPressed: () => Get.back(), // Close the dialog
              child: const Text('Close'))
        ],
      ));
    }
  }
}
