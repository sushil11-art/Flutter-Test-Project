// import 'package:flutter/material.dart';
// import 'package:property_client_finder_app/screens/welcome_screen.dart';

// class AppRoute {
//   static Route<dynamic> primaryGenerator(RouteSettings settings) {
//     Map<String, dynamic> arguments = settings.arguments ?? {};

//     // print("argument for  ${settings.name}  is $arguments");
//     // if (arguments['animation'] != null)
//     //   return PageTransition(
//     //       settings: settings,
//     // child: primaryRoutesMap(settings.arguments)[settings.name],
//     // type: arguments['animation']);
//     return PageRouteBuilder(
//         settings: settings,
//         pageBuilder: (context, anim, _) => Container(
//             child: primaryRoutesMap(settings.arguments)[settings.name]));
//   }
// }

// Map<String, Widget> primaryRoutesMap(Map<String, dynamic> arguments) {
//   if (arguments == null) arguments = {};
//   return {
//     '/home': WelcomeScreen(),
//   };
// }

// import 'package:flutter/material.dart';
// import 'package:property_client_finder_app/screens/welcome_screen.dart';

// class AppRoute {
//   static Route<dynamic> loginRouteMap(RouteSettings settings) {
//     return PageRouteBuilder(
//         settings: settings,
//         pageBuilder: (context, anim, _) =>
//             Container(child: authGenerator(settings.arguments)[settings.name]));
//   }
// }

// Map<String, Widget> authGenerator(Map<String, dynamic> arguments) {
//   return {'/welcome': WelcomeScreen()};
// }
