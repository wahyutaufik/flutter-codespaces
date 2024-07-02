// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      // Asumsi: Anda sudah memiliki logika untuk menentukan apakah pengguna sudah login atau belum.
      // Sementara ini, kita langsung navigasi ke HomePage sebagai contoh.
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              'images/intro.png',
              fit: BoxFit.fill, // Fill the screen with the image
            ),
          ),
        ],
      ),
    );
  }
}
