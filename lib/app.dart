import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_commerce/bindings/controller_binder.dart';
import 'package:online_commerce/features/screens/onboarding_screen.dart';
import 'package:online_commerce/theme/theme.dart';

class OnlineEcommerce extends StatefulWidget {
  const OnlineEcommerce({super.key});

  @override
  State<OnlineEcommerce> createState() => _OnlineEcommerceState();
}

class _OnlineEcommerceState extends State<OnlineEcommerce> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: OnlineEcommerceTheme.lightTheme,
      darkTheme: OnlineEcommerceTheme.darkTheme,
      home: const OnBoardingScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}