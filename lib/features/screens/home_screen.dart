import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/circular_container.dart';
import 'package:online_commerce/features/screens/widgets/custom_clipper.dart';
import 'package:online_commerce/utility/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomClipperEdge(),
              child: Container(
                color: AppColors.primaryColor,
                padding: const EdgeInsets.all(0),
                child: const SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned( top: 0,right: 300,left: 20,child: CircularContainer()),
                      Positioned( top: 100,right: -300,child: CircularContainer()),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


