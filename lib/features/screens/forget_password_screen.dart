import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_commerce/features/screens/login_screen.dart';
import 'package:online_commerce/features/screens/widgets/password_reset_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(() => const LoginScreen());
              },
              icon: const Icon(Icons.close)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forget password',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 16),
              Text(
                'Don\'t worry sometimes people can forget too, enter your email and we will send you a password reset link.',
              style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 48),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: 'E-mail',
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(onPressed: (){
                  Get.offAll(()=> const PasswordResetScreen());
                },child: const Text('Submit'),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
