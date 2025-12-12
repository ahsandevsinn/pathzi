import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/features/connections/connections_screen.dart';
import 'package:pathzi/features/home/home_screen.dart';
import 'package:pathzi/features/mycareers/mycareer_screen.dart';
import 'package:pathzi/features/profile/profile_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
    int _selectedIndex = 0;
    List screens = [
      HomeScreen(),
      MycareerScreen(),
      ConnectionsScreen(),
      ProfileScreen(),

    ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColors.white,
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
     fixedColor: AppColors.primary, 
        backgroundColor: AppColors.white, 
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        showSelectedLabels: true, 
        showUnselectedLabels: true, 
        unselectedItemColor: AppColors.darkGrey,
        
        items: [
        BottomNavigationBarItem(icon: _selectedIndex == 0 ? Image.asset(AppImages.swipePrimary,):Image.asset(AppImages.swipe,),label: "Swipe",backgroundColor: AppColors.white),
        BottomNavigationBarItem(icon: _selectedIndex == 1 ?Image.asset(AppImages.careerPrimary) :Image.asset(AppImages.career),label: "My Careers",backgroundColor: AppColors.white),
        BottomNavigationBarItem(icon: _selectedIndex == 2 ? Image.asset(AppImages.connectionPrimary):Image.asset(AppImages.connections), label: "Connections",backgroundColor: AppColors.white),
        BottomNavigationBarItem(icon:Image.asset(AppImages.profile),label: "Profile",backgroundColor: AppColors.white),
      ]),
    );
  }
}