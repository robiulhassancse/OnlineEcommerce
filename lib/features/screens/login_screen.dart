import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/login_devider.dart';
import 'package:online_commerce/features/screens/widgets/login_form.dart';
import 'package:online_commerce/features/screens/widgets/login_header.dart';
import 'package:online_commerce/features/screens/widgets/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              LoginInHeader(),
              LoginForm(),
              BottomDivider(),
              SizedBox(height: 16),
              SocialButton()
            ],
          ),
        ),
      ),
    ));
  }
}








