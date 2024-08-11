import 'package:flutter/material.dart';

import '../utils/colors.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBarWidget extends StatelessWidget {
  int currentIndex;
  void Function(int)? onTap;
  CustomBottomNavigationBarWidget(
      {this.onTap, required this.currentIndex, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(27),
          topRight: Radius.circular(27),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: darkPurple,
          selectedItemColor: whiteColor,
          unselectedItemColor: warmGrey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
              label: 'Watch',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Media Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
