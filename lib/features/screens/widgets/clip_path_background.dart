import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/circular_container.dart';
import 'package:online_commerce/features/screens/widgets/custom_clipper.dart';
import 'package:online_commerce/utility/app_color.dart';

class ClipPathBackground extends StatelessWidget {
  const ClipPathBackground({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperEdge(),
      child: Container(
        color: AppColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: const SizedBox(
          height: 260,
          child: Stack(
            children: [
              Positioned(top: 0, right: 300, left: 20, child: CircularContainer()),
              Positioned(top: 100, right: -300, child: CircularContainer()),
            ],
          ),
        ),
      ),
    );
  }
}