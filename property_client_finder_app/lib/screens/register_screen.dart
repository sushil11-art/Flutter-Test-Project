import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:property_client_finder_app/controllers/register_controller.dart';
import 'package:property_client_finder_app/navigation.dart';
// import 'package:property_client_finder_app/screens/welcome_screen.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController registerController = Get.put((RegisterController()));
  // const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: registerController.registerFormKey,
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  controller: registerController.emailController,
                  decoration: const InputDecoration(labelText: 'E-mail'),
                  // validator: (value){
                  //   if(value.isEmpty)
                  // },
                  onSaved: (value) {
                    registerController.email = value!;
                  },
                  validator: (value) {
                    return registerController.validateEmail(value);
                  }),
              TextFormField(
                  controller: registerController.usernameController,
                  decoration: const InputDecoration(labelText: 'Username'),
                  onSaved: (value) {
                    registerController.username = value!;
                  },
                  validator: (value) {
                    return registerController.validateUsername(value);
                  }),
              TextFormField(
                controller: registerController.passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                onSaved: (value) {
                  registerController.password = value!;
                },
                validator: (value) {
                  return registerController.validatePassword(value);
                },
                obscureText: true,
              ),
              ElevatedButton(
                child: const Text('Regitser'),
                onPressed: registerController.registerUser,
              ),
              ElevatedButton(
                onPressed: () => Get.offAndToNamed(Routes.welcome),
                child: const Text('Go to welcome page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
