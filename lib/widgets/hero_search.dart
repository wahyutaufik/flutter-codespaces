import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroSearch extends StatelessWidget {
  const HeroSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Apa yang mau kamu pelajari hari ini ?\nSilahkan masukan kata kunci nya dibawah ini ya . . .',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(65, 0, 0, 0),
                  blurRadius: 12.0,
                  spreadRadius: 0.0,
                  offset: Offset(0.0, 3.0),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 16,
                  icon: SvgPicture.asset(
                    'icons/search.svg',
                    width: 20,
                    height: 20,
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                ),
                Expanded(
                    child: TextFormField(
                  style: const TextStyle(color: Colors.black54),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Cari...',
                    isDense: true,
                  ),
                )),
                Container(
                  decoration: const BoxDecoration(
                    color:
                        Colors.blue, // Set container background color to blue
                    shape: BoxShape
                        .circle, // Optional: makes the container circular
                  ),
                  child: IconButton(
                    iconSize: 16,
                    icon: SvgPicture.asset(
                      'icons/filter.svg',
                      width: 18,
                      height: 18,
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
