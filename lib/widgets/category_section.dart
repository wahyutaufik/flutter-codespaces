import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FB5Container(
            child: const Text(
          'Bidang Pekerjaan',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        )),
        const SizedBox(height: 10),
        FB5Row(
          classNames: 'px-xs-3 px-lg-0 g-3',
          children: [
            FB5Col(
              classNames: 'col-4',
              child: const CardMenu(
                icon: Icons.work,
                label: 'Distribusi',
              ),
            ),
            FB5Col(
              classNames: 'col-4',
              child: const CardMenu(
                icon: Icons.work,
                label: 'Transmisi',
              ),
            ),
            FB5Col(
              classNames: 'col-4',
              child: const CardMenu(
                icon: Icons.work,
                label: 'Pembangkit',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CardMenu extends StatelessWidget {
  final IconData icon;
  final String label;

  const CardMenu({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5, // Increase the elevation value for a stronger shadow effect
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8), // Add rounded corners to the card
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(icon),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(color: Colors.black, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
