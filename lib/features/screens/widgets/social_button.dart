import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            border: Border.all(color: Colors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: 22,
              width: 22,
              image: AssetImage(
                'assets/images/facebook.png',
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            border: Border.all(color: Colors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: 20,
              width: 20,
              image: AssetImage(
                'assets/images/google.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}