import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_commerce/controller/main_bottom_nav_controller.dart';
import 'package:online_commerce/features/screens/home_screen.dart';
import 'package:online_commerce/features/screens/login_screen.dart';
import 'package:online_commerce/utility/app_color.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final MainBottomNavBarController _navBarController = Get.find<MainBottomNavBarController>();

  final List<Widget> _screens =[
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const LoginScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainBottomNavBarController>(
        builder: (_){
          return _screens[_navBarController.selectedIndex];
        },
      ),
      bottomNavigationBar: GetBuilder<MainBottomNavBarController>(
        builder: (_) {
          return BottomNavigationBar(
              currentIndex: _navBarController.selectedIndex,
              onTap: _navBarController.changeIndex,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.store),label: 'Store'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Person'),
          ]);
        }
      ),
    );
  }
}
