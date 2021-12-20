import 'package:flutter/material.dart';
import 'package:property_client_finder_app/navigation.dart';
import 'package:property_client_finder_app/screens/login_screen.dart';
import 'package:property_client_finder_app/screens/register_screen.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text('Welcome',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Property Client Finder',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/propertyFinder.jpg")),
                ),
              ),
              Column(
                children: [
                  MaterialButton(
                    onPressed: () => Get.offAndToNamed(Routes.login),
                    minWidth: double.infinity,
                    height: 60,
                    // color: const Color(0xff0095FF),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),

                    // ignore: prefer_const_literals_to_create_immutables
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.verified_user),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () => Get.offAndToNamed(Routes.register),
                    minWidth: double.infinity,
                    height: 60,
                    color: Theme.of(context).colorScheme.primary,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),

                    // ignore: prefer_const_literals_to_create_immutables
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.person_pin_circle_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              )

              // ElevatedButton.icon(
              //   onPressed: () {},
              //   icon: const Icon(Icons.favorite),
              //   label: const Text('Login'),
              //   style: ElevatedButton.styleFrom(
              //       fixedSize: Size(double.infinity, 10)),
              // )
            ],
          ),
        ),
      )),
    );
  }
}
