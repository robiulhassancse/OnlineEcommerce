import 'package:flutter/material.dart';
import 'package:online_commerce/controller/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomDotNavigation extends StatelessWidget {
  const BottomDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller= OnBoardingController.instance;
    return Positioned(
      top: 700,
      left: 30,
      right: 0,
      bottom: 0,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigation,
        count: 3,
        effect: const ExpandingDotsEffect(
            activeDotColor: Colors.pink, dotHeight: 6),
      ),
    );
  }
}