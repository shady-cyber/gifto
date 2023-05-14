import 'package:flutter/material.dart';
import 'package:gifto/modules/home.dart';
import 'package:gifto/modules/intro.dart';
import 'package:gifto/modules/login.dart';
import 'package:gifto/modules/register.dart';
import 'modules/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/intro': (context) => const Intro(),
        '/home': (context) => const Home(),
      }
    );
  }
}