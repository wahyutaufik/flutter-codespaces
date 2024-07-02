import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: Colors.blue,
        selectedFontSize: 12.0,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icons/home.svg',
              width: 24,
              height: 24,
              color: currentIndex == 0 ? Colors.blue : null,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icons/course.svg',
              width: 24,
              height: 24,
              color: currentIndex == 1 ? Colors.blue : null,
            ),
            label: 'Kursus',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icons/achievement.svg',
              width: 24,
              height: 24,
              color: currentIndex == 2 ? Colors.blue : null,
            ),
            label: 'Pecapaian',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icons/bookmark.svg',
              width: 24,
              height: 24,
              color: currentIndex == 3 ? Colors.blue : null,
            ),
            label: 'Kursusku',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icons/person.svg',
              width: 24,
              height: 24,
              color: currentIndex == 4 ? Colors.blue : null,
            ),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
