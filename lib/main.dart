import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/routes.dart';

void main() {
  runApp(const MyApp());
  // log(kIsWeb.toString());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //1st method
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const WhatsAppLandingScreen(),
      //   '/chats': (context) => const ContactSelectScreen(),
      // },

      //2nd method using model
      // initialRoute: Routes.home,
      // routes: {
      //   Routes.home: (context) => const WhatsAppLandingScreen(),
      // },

      // 3rd method
      initialRoute: Routes.home,
      routes: Routes.routes,

      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        // pageTransitionsTheme: const PageTransitionsTheme(builders: {
        //   TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        //   TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        // }),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      // home: const Scaffold(
      //   body: WhatsAppLandingScreen(),
      // ),
    );
  }
}
