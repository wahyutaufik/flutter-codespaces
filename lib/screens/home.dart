// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

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
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        title: Padding(
          padding: const EdgeInsets.only(top: 8), // Add padding top
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage('https://dummyimage.com/200x200'),
              ),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('John Doe',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('john.doe@example.com', style: TextStyle(fontSize: 14)),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  // Handle notification button press
                },
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  '5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
