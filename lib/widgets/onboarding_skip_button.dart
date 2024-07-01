import 'package:flutter/material.dart';
import 'package:online_commerce/controller/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 300,
        right: 0,
        top: 10,
        child: TextButton(
          onPressed: () {OnBoardingController.instance.skipPage();},
          child: Text(
            'Skip',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ));
  }
}