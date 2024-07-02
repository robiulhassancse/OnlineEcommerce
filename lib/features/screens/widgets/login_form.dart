import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_commerce/features/screens/sign_up_screen.dart';
import 'package:online_commerce/theme/theme.dart';
import 'package:online_commerce/utility/app_color.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailTEController,
            decoration: InputDecoration(
              labelText: 'E-mail',
              prefixIcon: Icon(
                Icons.email_outlined,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _passwordTEController,
            decoration: InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Icons.password, color: AppColors.primaryColor),
              suffixIcon:
                  const Icon(Icons.remove_red_eye_outlined, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text('Remember Me',
                      style:
                          OnlineEcommerceTheme.lightTheme.textTheme.bodySmall),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text('Forget Password',
                    style: OnlineEcommerceTheme.lightTheme.textTheme.bodySmall),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
                Get.to(()=> const SignUpScreen());
              },
              child: const Text('Sign In'),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Create New Account'),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
