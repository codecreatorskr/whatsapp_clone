import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        // fontFamily: 'RopaSans',
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: const WhatsAppLandingScreen(),
    );
  }
}
