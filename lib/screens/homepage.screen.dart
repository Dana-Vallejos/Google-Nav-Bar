import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nav_bar/screens/home.screen.dart';
import 'package:nav_bar/screens/notification.screen.dart';
import 'package:nav_bar/screens/profile.screen.dart';
import 'package:nav_bar/screens/schedule.screen.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int _currentindex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ScheduleScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_currentindex)),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              backgroundColor: Colors.white,
              color: const Color(0xFF8696BB),
              gap: 5,
              activeColor: const Color(0xFF63B4FF),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              tabBackgroundColor: const Color(0xFFE5F5FF),
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.calendar_month_outlined,
                  text: 'Schedule',
                ),
                GButton(
                  icon: Icons.notifications_none_outlined,
                  text: 'Notifications',
                ),
                GButton(
                  icon: Icons.person_outline,
                  text: 'Profile',
                )
              ],
              selectedIndex: _currentindex,
              onTabChange: (index) {
                setState(() {
                  _currentindex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
