import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/circular_container.dart';
import 'package:online_commerce/features/screens/widgets/custom_clipper.dart';
import 'package:online_commerce/utility/app_color.dart';

class ProfileClipPathBackGround extends StatelessWidget {
  const ProfileClipPathBackGround({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperEdge(),
      child: Container(
        color: AppColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child:  SizedBox(
          height: 200,
          child: Stack(
            children: [
              const Positioned(top: 0, right: 300, left: 20, child: CircularContainer()),
              const Positioned(top: 100, right: -300, child: CircularContainer()),
              child,
            ],
          ),
        ),
      ),
    );
  }
}