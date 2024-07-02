import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_commerce/features/screens/email_verification_screen.dart';
import 'package:online_commerce/features/screens/sign_up_screen.dart';
import 'package:online_commerce/features/screens/widgets/terms_and_conditon_check_box.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'First Name'),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Last Name'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person_outlined),
            labelText: 'Username',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone), labelText: 'Phone Number'),
        ),
        const SizedBox(height: 16),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.password),
            labelText: 'Password',
            suffixIcon: Icon(Icons.remove_red_eye_outlined),
          ),
        ),
        const SizedBox(height: 16),
        const TermsAndConditionCheckBox(),
        const SizedBox(height: 16),
        SizedBox(
          width: double.maxFinite,
          child: ElevatedButton(
              onPressed: () {
                Get.to(()=> const EmailVerificationScreen());
              }, child: const Text('Create Account')),
        ),
      ],
    );
  }
}

