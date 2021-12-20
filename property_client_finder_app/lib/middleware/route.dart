
// class AppRoute {
//   static Route<dynamic> primaryGenerator(RouteSettings settings) {
//     Map<String, dynamic> arguments = settings.arguments ?? {};

//     print("argument for  ${settings.name}  is $arguments");
//     if (arguments['animation'] != null)
//       return PageTransition(
//           settings: settings,
//           child: primaryRoutesMap(settings.arguments)[settings.name],
//           type: arguments['animation']);
//     return PageRouteBuilder(
//         settings: settings,
//         pageBuilder: (context, anim, _) => Container(
//             child: primaryRoutesMap(settings.arguments)[settings.name]));
//   }

//   static Route<dynamic> noLoginGenerator(RouteSettings settings) {
//     Map<String, dynamic> arguments = settings.arguments ?? {};
//     if (arguments['animation'] != null)
//       return PageTransition(
//           settings: settings,
//           child: noLoginRouteMap(settings.arguments)[settings.name],
//           type: arguments['animation']);
//     return PageRouteBuilder(
//         settings: settings,
//         pageBuilder: (context, anim, _) => Container(
//             child: noLoginRouteMap(settings.arguments)[settings.name]));
//   }

//   static Route<dynamic> secondaryGenerator(RouteSettings settings) {
//     Map<String, dynamic> arguments = settings.arguments ?? {};

//     if (!secondaryRoutesMap(arguments).containsKey(settings.name))
//       return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => secondaryRoutesMap(
//               {'route': settings.name, 'arguments': arguments})['/']);

//     if (arguments['animation'] != null)
//       return PageTransition(
//           settings: settings,
//           child: secondaryRoutesMap(settings.arguments)[settings.name],
//           type: arguments['animation']);

//     return MaterialPageRoute(
//       builder: (context) =>
//           secondaryRoutesMap(settings.arguments)[settings.name],
//     );
//   }

//   static Route<dynamic> mutualRouteGenerator(RouteSettings settings) {
//     Map<String, dynamic> arguments = settings.arguments ?? {};
//     if (arguments['animation'] != null)
//       return PageTransition(
//           settings: settings,
//           child: mutualRoutesMap(settings.arguments)[settings.name],
//           type: arguments['animation']);

//     return PageRouteBuilder(
//         settings: settings,
//         pageBuilder: (context, anim, _) => Container(
//             child: mutualRoutesMap(settings.arguments)[settings.name]));
//   }
// }

// Map<String, Widget> noLoginRouteMap(Map<String, dynamic> arguments) {
//   if (arguments == null) arguments = {};
//   return {
//     '/': LoginWithEmailPage(),
//     '/home': HomeScreen(),
//     '/register': RegisterEmailPage(),
//     '/otp': OTPScreen(),
//     '/login-main': LoginWithEmailMainPage(),
//     '/login': LoginWithEmailPage(),
//     '/forgot-password': ForgotPassword(),
//     '/privacy-policy': PrivacyPolicyScreen()
//   };
// }

// Map<String, Widget> primaryRoutesMap(Map<String, dynamic> arguments) {
//   if (arguments == null) arguments = {};
//   return {
//     '/home': HomeScreen(),
//     '/login-main': LoginWithEmailMainPage(),
//     '/landing': LandingScreen(),
//     '/': LandingScreen(),
//     '/demat-services': DematServices(),
//     '/mutual-fund-closed': MutualFundClosedScreen(),
//     '/pms-home': PMSHomeScreen(),
//     '/pms': PMSScreen(),
//     '/nepse': NEPSEScreen(),
//     '/more': MoreScreen(),
//     '/demat-scheme': DematPackageList(),
//     // '/demat-scheme': DematRenewRequest(),
//     '/demat-update-bank': UpdateDematBankAccountDetail(),
//     '/demat-update-signature': UpdateDematSignature(),
//     '/demat-update-boid': UpdateDematBOID(),
//     '/demat-crn-request': DematCRNRequest(),
//     '/demat-renew-request': DematRenewRequest(),
//     '/demat-open': DematFormInitial(
//       selectedPackage: arguments['package'] ?? Map<String, dynamic>.from({}),
//     ),
//     '/demat-form': DematFormMain(
//       isMinor: arguments['is_minor'] ?? false,
//       accountType: arguments['account_type'],
//       selectedPackage: arguments['package'] ?? Map<String, dynamic>.from({}),
//     ),
//     '/demat-kyc': KycVerificationDemat(
//       prevData: arguments['data'] ?? Map<String, dynamic>.from({}),
//       selectedPackage: arguments['package'] ?? Map<String, dynamic>.from({}),
//     ),
//     // '/demat-payment':
//     '/account-open': NewAccountFormInitial(),
//     '/account-form': AccountFormMain(
//       branch: arguments['branch'] ?? "",
//       accountType: arguments['account_type'],
//     ),
//     '/pms-open': PmsFormInitial(),
//     '/video-verification': VideoVerificationPage(),
//     '/pms-form': PmsFormMain(
//       selectedPackage: arguments['package'] ?? Map<String, dynamic>.from({}),
//     ),
//     '/outstanding-payment-query': DematAMCPaymentScreen(),
//     '/news-notification': NewsNotificationPage(),
//     '/change-password': ChangePasswordScreen(),
//     '/set-pin': ChangePinPage(),
//     '/mero-share-renew': MeroShareRenew(),
//     '/mero-share-application': MeroShareApplication(),
//     '/mero-share-link-account': MeroShareLinkAccount(),
//     '/demat-pledge-share': DematPledgeSharesScreen(),
//     '/demat-statement-request': DematStatementScreen(),
//     '/watchlist-main': WatchListMainScreen(),
//     '/share-allotment-screen': ShareAllotmentScreen(),
//     '/connect-demat': ConnectDematAccountScreen(),
//     '/profile-screen': ProfileScreen(),
//     '/security-screen': SecurityScreen(),
//     '/ref-no-show': ReferenceNumberScreen(
//       refNo: arguments['refNo'],
//     ),
//     '/privacy-policy': PrivacyPolicyScreen()
//   };
// }

// Map<String, Widget> secondaryRoutesMap(Map<String, dynamic> arguments) {
//   if (arguments == null) arguments = {};

//   return {
//     '/': HomeScreen(),
//     '/more/profile': ProfileScreen(),
//     '/demat-open': DematFormInitial(),
//     '/mfp': MutualFundMainPage(),
//     '/demat-form': DematFormMain(
//       isMinor: arguments['is_minor'] ?? false,
//       accountType: arguments['account_type'],
//     )
//   };
// }

// Map<String, Widget> mutualRoutesMap(Map<String, dynamic> arguments) {
//   if (arguments == null) arguments = {};

//   return {
//     '/': MutualFundDashboardPage(),
//     '/holding': MutualFundHoldingPage(),
//     '/sip': SIPDetailPage(),
//     '/account': MutualFundDetailPage()
//   };
// }