import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/list_of_onboard_image.dart';

class LoginInHeader extends StatelessWidget {
  const LoginInHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
          height: 150,
          width: 150,
          image: AssetImage(OnboardImageList.appLogo),
        ),
        Text(
            'Welcome back,', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 10),
        Text('Discover Limitless Choices and Unmatched Convenience Something,',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center),
        const SizedBox(height: 10),
      ],
    );
  }
}