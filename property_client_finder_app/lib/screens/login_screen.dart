import 'package:flutter/material.dart';
import 'package:property_client_finder_app/controllers/login_controller.dart';

import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:property_client_finder_app/navigation.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);
  final LoginController loginController = Get.put((LoginController()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: loginController.loginFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  controller: loginController.emailController,
                  decoration: const InputDecoration(labelText: 'E-mail'),
                  // validator: (value){
                  //   if(value.isEmpty)s
                  // },
                  onSaved: (value) {
                    loginController.email = value!;
                  },
                  validator: (value) {
                    return loginController.validateEmail(value);
                  }),
              TextFormField(
                controller: loginController.passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                onSaved: (value) {
                  loginController.password = value!;
                },
                validator: (value) {
                  return loginController.validatePassword(value);
                },
                obscureText: true,
              ),
              ElevatedButton(
                child: const Text('Login'),
                onPressed: loginController.loginUser,
                // onPressed: registerController.registerUser,
              ),
              ElevatedButton(
                  child: const Text('Register'),
                  onPressed: () => Get.offAndToNamed(Routes.register)
                  // onPressed: registerController.registerUser,
                  )
            ],
          ),
        ),
      ),
    );
  }
}
