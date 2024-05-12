import 'package:app/config/router_config.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp (const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GlobalKey <ScaffoldMessengerState> globalKey= GlobalKey<ScaffoldMessengerState>(); 
    return MaterialApp.router(
      routeInformationParser: AgriSmartRouter.router.routeInformationParser,
      routeInformationProvider: AgriSmartRouter.router.routeInformationProvider,
      routerDelegate: AgriSmartRouter.router.routerDelegate,
      scaffoldMessengerKey: globalKey,
      debugShowCheckedModeBanner: false,
      title: 'AgriSmart',
      theme: ThemeData(
        useMaterial3: false,       
      ),
    );
  }
}

