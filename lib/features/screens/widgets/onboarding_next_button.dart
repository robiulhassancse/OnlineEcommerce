import 'package:flutter/material.dart';
import 'package:online_commerce/controller/onboarding_controller.dart';

class OnBoardNextButton extends StatelessWidget {
  const OnBoardNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 700,
        // left: 0,
        right: 30,
        bottom: 0,
        child: SizedBox(
          height: 70,
          width: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const CircleBorder(),),
            onPressed: () {
              OnBoardingController.instance.nextPage();
            },
            child: const Icon(Icons.arrow_forward_ios_outlined,size: 30,),
          ),
        ));
  }
}