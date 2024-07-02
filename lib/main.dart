import 'package:flutter/material.dart';
import 'screens/intro.dart';
import 'screens/home.dart';
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:
            const Color(0xFFF5F9FF), // Set the scaffold background color
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Intro(),
        '/home': (context) => const Home(),
        '/login': (context) => const Login(),
      },
    );
  }
}
