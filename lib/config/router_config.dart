import 'package:app/pages/home_page.dart';
import 'package:app/pages/logo_page.dart';
import 'package:app/pages/newRegistration_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AgriSmartRouter {
  static final rootNavigationKey = GlobalKey <NavigatorState>();
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    navigatorKey: rootNavigationKey,
    debugLogDiagnostics: true,
    routes:[
      GoRoute(
        parentNavigatorKey: rootNavigationKey, path:'/',
        builder: (context, state) => HomePage(),
        ),
        GoRoute(path: "/logo_page", 
        parentNavigatorKey: rootNavigationKey, builder: (context, state) => LogoPage(),
        ),

      GoRoute(path: "/NewRegistrationPage",
      parentNavigatorKey: rootNavigationKey, builder: (context, state) => NewRegistrationPage(),
      ),
    ] );

}
