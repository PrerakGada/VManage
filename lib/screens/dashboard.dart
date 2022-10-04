import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eos_hackover3/screens/explore_screen.dart';
import 'package:eos_hackover3/screens/home_screen.dart';
import 'package:eos_hackover3/screens/newEvent_screen.dart';
import 'package:eos_hackover3/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../services/get_it_service.dart';
import '../services/navigation_service.dart';

class Dashboard extends StatelessWidget {
  final NavigationService _navigationService =
      get_it_instance_const<NavigationService>();

  final PageController _pageController = PageController();

   Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomeScreen(),
          ExploreScreen(),
          NewEventScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 3,
        color: Colors.red,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 100),
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.linear,
          );
        },
        items: [
          Icon(Icons.home_filled, color: Colors.black),
          Icon(Icons.explore, color: Colors.black),
          Icon(Icons.add, color: Colors.black),
          Icon(Icons.account_circle, color: Colors.black),
        ],
      ),
    );
  }
}
