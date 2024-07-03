import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FB5Container(
          child: FB5Row(
            classNames: 'px-3',
            children: [
              FB5Col(
                  child: const Text(
                'Rekomendasi Pembelajaran',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              )),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
