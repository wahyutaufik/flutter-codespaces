import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:google_fonts/google_fonts.dart';
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
    var baseTheme = ThemeData(brightness: Brightness.dark);
    return FlutterBootstrap5(
      builder: (ctx) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor:
              const Color(0xFFF5F9FF), // Set the scaffold background color
          textTheme: GoogleFonts.mulishTextTheme(baseTheme.textTheme),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Intro(),
          '/home': (context) => const Home(),
          '/login': (context) => const Login(),
        },
      ),
    );
  }
}
