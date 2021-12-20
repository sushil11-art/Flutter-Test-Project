import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_client_finder_app/middleware/auth_middleware.dart';
import 'package:property_client_finder_app/screens/login_screen.dart';
import 'package:property_client_finder_app/screens/register_screen.dart';
import 'package:property_client_finder_app/screens/welcome_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:property_client_finder_app/services/auth_services.dart';

import './navigation.dart';

// import 'package:property_client_finder_app/views/home_page.dart';
// import 'package:property_client_finder_app/views/shopping_page.dart';
// import 'package:property_client_finder_app/views.dart/shopping_page.dart';

// ShoppingPage
void main() async {
  // Get.lazyPut(() => AuthService());
  // Get.put(AuthServisce());
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Property Client Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      // home: RegisterPage(),
      initialRoute: Routes.register,
      getPages: [
        GetPage(name: Routes.register, page: () => RegisterPage()),
        GetPage(name: Routes.login, page: () => LoginScreen()),

        GetPage(
            name: Routes.welcome,
            page: () => WelcomeScreen(),
            middlewares: [AuthGuard()])
        // Dynamic route
      ],
    );
  }
}
