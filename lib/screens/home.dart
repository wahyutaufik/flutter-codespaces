// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/hero_search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0; // Initial index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(top: 20), // Modifikasi jarak dari atas
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://dummyimage.com/200x200'),
                    radius: 24,
                  ),
                  const SizedBox(width: 8),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Selamat Datang', style: TextStyle(fontSize: 10)),
                      Text('Agus Salim',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: SvgPicture.asset(
                      'icons/bell.svg',
                      width: 20,
                      height: 20,
                    ),
                    onPressed: () {
                      // Handle notification button press
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: const HeroSearch(),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update currentIndex and rebuild the widget
          });
        },
      ),
      // The rest of your Scaffold body
    );
  }
}
