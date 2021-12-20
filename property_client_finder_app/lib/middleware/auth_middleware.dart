import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_client_finder_app/controllers/login_controller.dart';
import 'package:property_client_finder_app/navigation.dart';
import 'package:property_client_finder_app/services/auth_services.dart';
import 'package:get_storage/get_storage.dart';

class AuthGuard extends GetMiddleware {
  // final authService = Get.find<AuthService>();
  // final box = GetStorage();
  // final authService = Get.find<LoginController>();
  final authService = Get.put(LoginController());

  @override
  RouteSettings? redirect(String? route) {
    // Navigate to login if client is not authenticated other wise continue
    if (authService.isAuthenticated.value) return null;
    return RouteSettings(name: Routes.login);

    // print(authService.isAuthenticated.value);
    // return authService.isAuthenticated.value
    //     ? null
    //     : const RouteSettings(name: Routes.login);
    // if (authService.isAuthenticated.value)
    //   return RouteSettings(name: Routes.welcome);
    // return RouteSettings(name: Routes.login);
  }
}
