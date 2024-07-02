import 'package:flutter/material.dart';

class BottomDivider extends StatelessWidget {
  const BottomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(thickness: 0.5, indent: 5, endIndent: 10),),
        Text('Or Sign in With'),
        Flexible(child: Divider(thickness: 0.5, indent: 10, endIndent: 5),),
      ],
    );
  }
}