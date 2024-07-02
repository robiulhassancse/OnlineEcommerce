import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/login_devider.dart';
import 'package:online_commerce/features/screens/widgets/sign_up_form.dart';
import 'package:online_commerce/features/screens/widgets/social_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let\'s create your account',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 24),
              const SignUpForm(),
              const SizedBox(height: 48),
              const BottomDivider(),
              const SizedBox(height: 24),
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


