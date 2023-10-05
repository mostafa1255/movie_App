import 'package:flutter/material.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Details_Screen/Details_Screen.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Empity_Sreen.dart/Empty_Screen.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Home/home_screen.dart';
import 'package:movie_app/App/core/Styles/constants.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarScreen> {
  List screens = [
    const HomeScreen(),
    const DetailsScreen(),
    const EmityScreen()
  ];
  int slectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Constants.kPrimaryColor,
        currentIndex: slectedIndex,
        onTap: (index) {
          slectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home_filled),
              label: "",
              backgroundColor: Colors.grey.withOpacity(0.2),
              activeIcon: const Icon(
                Icons.home_filled,
                color: Constants.korangeColor,
              )),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.2),
              child: const Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
              ),
            ),
            label: "",
            activeIcon: const CircleAvatar(
              backgroundColor: Constants.korangeColor,
              child: Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
              ),
            ),
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: "",
              activeIcon: Icon(
                Icons.account_circle_rounded,
                color: Constants.korangeColor,
              ))
        ],
      ),
      body: screens[slectedIndex],
    );
  }
}
